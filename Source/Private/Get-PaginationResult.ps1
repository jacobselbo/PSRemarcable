Function Get-PaginationResult {
    Param(
        [Parameter(Mandatory = $true, ValueFromPipeline)]
        $Pagination,

        # Oddly, Get-AssetItem's actual paginated results are "asset_list" and not "results" unlike the rest of their API
        $InsideResults
    )
    Process {
        $Results = $Pagination.results
        $NextURI = $Pagination.next

        if ($InsideResults) {
            $Results = $Pagination.results.$InsideResults
        }

        while ($null -ne $NextURI) {
            $Data = try {
                Write-Verbose "Beginning Pagination API Call. $($Results.Count)/$($Pagination.count)"

                Invoke-RestMethod -Uri $NextURI -Method Get
            } catch [Microsoft.PowerShell.Commands.HttpResponseException] {
                if ($_.Exception.Response.StatusCode -eq 429) {
                    $TimeToSleep = $_.Exception.Response.Headers.psbase.RetryAfter.Delta -or 1000

                    Write-Verbose "Waiting '$($TimeToSleep.TotalMilliseconds)' Milliseconds to invoke Pagination API Request due to 429 error"
                    Start-Sleep $TimeToSleep

                    Invoke-RestMethod -Uri $NextURI -Method Get
                }
            } catch {
                throw "Could not fully paginate API. $($_)"
            }

            $NextURI = $Data.next

            if ($InsideResults) {
                $Results += $Data.results.$InsideResults
            } else {
                $Results += $Data.results
            }
        }

        return $Results
    }
}