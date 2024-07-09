<#
    .SYNOPSIS
        Create new stock file items or update existing ones

    .DESCRIPTION
        Create new stock file items or update existing ones

    .PARAMETER CompanyBranchID
        Seller company branch Remarcable ID

    .PARAMETER StockFileItems
        List of StockFileItem objects

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=213
#>
Function Import-StockFile {
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
        $RequestParameters = New-RemarcableRequest -URI "/seller_api/v1/ImportStockFile/" -Method POST -JSON -Parameters @{
            company_branch_id = $CompanyBranchID
            json_data = @($StockFileItems | ForEach-Object ${ $_.Serialize() })
        }
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters
        } catch {
            Write-Error "Failed to import stock file items"
            Write-Error $_
        }
    }
}