<#
    .SYNOPSIS
        Get project from project ID

    .DESCRIPTION
        Get project from project ID

    .PARAMETER ProjectID
        Remarcable Project ID

    .PARAMETER AsClass
        Returns Project Class instead of Raw data. Perferable if Import-BulkProject or Import-Project are going to be used with simple data changes.

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=67
#>
Function Get-Project {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string]
        $ProjectID,

        [switch]
        $AsClass
    )
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/RetrieveProject/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            account_email = $script:RemarcableClient.APICredential.UserName
            project_id = $ProjectID
        }
    }
    Process {
        try {
            if ($AsClass) {
                $Data = Invoke-RestMethod -Uri $URI -Body $Parameters -Method GET

                Return [Project]::new($Data)
            } else {
                Return Invoke-RestMethod -Uri $URI -Body $Parameters -Method GET
            }
        } catch {
            Write-Error "Failed to retrieve Remarcable Project"
            Write-Error $_
        }
    }
}