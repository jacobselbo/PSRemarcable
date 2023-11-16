<#
    .SYNOPSIS
        Get price file from price file ID

    .DESCRIPTION
        Get price file from price file ID

    .PARAMETER PriceFileID
        Remarcable Price File ID

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=229
#>
Function Get-PriceFile {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $PriceFileID
    )
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/GetBuyerPriceFileItems/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            account_email = $script:RemarcableClient.APICredential.UserName
            pricefile_id = $PriceFileID
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