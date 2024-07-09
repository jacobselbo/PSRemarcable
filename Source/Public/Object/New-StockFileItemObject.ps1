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
    
    .PARAMETER Raw
        Allows raw hashtable input. Used for data manipulation
#>
Function New-StockFileItem {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [string]
        $SKU,

        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [int]
        $StockQuantity,

        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [int]
        $BranchStockQuantity,

        [Parameter(Mandatory = $true, ParameterSetName = "Raw")]
        [hashtable]
        $Raw
    )
    Process {
        if ($Raw) {
            return [StockFileItem]::new($Raw)
        } else {
            return [StockFileItem]::new($SKU, $StockQuantity, $BranchStockQuantity)
        }
    }
}