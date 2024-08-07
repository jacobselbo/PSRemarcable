<#
    .SYNOPSIS
        Creates a Price File Object to be imported or updated

    .DESCRIPTION
        Creates a Price File Object to be imported or updated. This method is used to create code readability

    .PARAMETER StockNumber
        Manufacturer stock number of price file item

    .PARAMETER Description
        Price file item description

    .PARAMETER SKU
        Seller company Item ID

    .PARAMETER UPC
        11-digit UPC number of a price file item

    .PARAMETER Price
        Price of given UPC

    .PARAMETER UnitOfMeasurement
        Typical values are 1, 100, 1000, E, M, C. For example, conduit is typically sold per 100ft. If the the average price is $200/100ft. The price will be 200 and UOM will be 100

    .PARAMETER Raw
        Allows raw hashtable input. Used for data manipulation
#>
Function New-PriceFileItem {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [string]
        $StockNumber,

        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [string]
        $Description,

        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [string]
        $SKU,

        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [string]
        $UPC,

        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [float]
        $Price,

        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [string]
        $UnitOfMeasurement,

        [Parameter(Mandatory = $true, ParameterSetName = "Raw")]
        [hashtable]
        $Raw
    )
    Process {
        if ($Raw) {
            return [PriceFileItem]::new($Raw)
        } else {
            return [PriceFileItem]::new($StockNumber, $Description, $SKU, $UPC, $Price, $UnitOfMeasurement)
        }
    }
}