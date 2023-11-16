<#
    .SYNOPSIS
        Gets a list of price files

    .DESCRIPTION
        Gets a list of price files

    .PARAMETER Search
        Searches a price file and company names for keywords

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=69
#>
Function Search-PriceFile {
    [CmdletBinding()]
    param (
        [string]
        $Search
    )
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/ListPriceFile/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            account_email = $script:RemarcableClient.APICredential.UserName
            search_terms = $Search
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method GET | Get-PaginationResult
        } catch {
            Write-Error "Failed to retrieve Remarcable Price Files"
            Write-Error $_
        }
    }
}