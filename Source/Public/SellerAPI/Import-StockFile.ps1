<#
    .SYNOPSIS
        Create new price file items or update existing ones

    .DESCRIPTION
        Create new price file items or update existing ones

    .PARAMETER CompanyBranchID
        Seller company branch Remarcable ID

    .PARAMETER StockFileItems
        List of StockFileItem objects

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=213
#>
Function Get-PriceFile {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $CompanyBranchID,

        [Parameter(Mandatory = $true)]
        [StockFileItem[]]
        $StockFileItems
    )
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/seller_api/v1/ImportStockFile/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            account_email = $script:RemarcableClient.APICredential.UserName
            company_branch_id = $CompanyBranchID
            json_data = @($StockFileItems | ForEach-Object ${ $_.Seralize() })
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method POST
        } catch {
            Write-Error "Failed to import stock file items"
            Write-Error $_
        }
    }
}