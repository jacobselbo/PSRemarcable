<#
    .SYNOPSIS
        Creates a Stock File Object to be imported or updated

    .DESCRIPTION
        Creates a Stock File Object to be imported or updated. This method is used to create code readability

    .PARAMETER SKU
        Seller company Item ID

    .PARAMETER StockQuantity
        Stock level availabilty for next day delivery

    .PARAMETER BranchStockQuantity
        Local branch in-store stock quantity
#>
Function New-StockFileItem {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $SKU,

        [Parameter(Mandatory = $true)]
        [int]
        $StockQuantity,

        [Parameter(Mandatory = $true)]
        [int]
        $BranchStockQuantity
    )
    Process {
        return [StockFileItem]::new($SKU, $StockQuantity, $BranchStockQuantity)
    }
}