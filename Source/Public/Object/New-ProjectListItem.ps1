<#
    .SYNOPSIS
        Creates a Project List Item

    .DESCRIPTION
       Creates a Project List Item for use in a Project List. This method is used to create code readability

    .PARAMETER Description
        Item Description

    .PARAMETER Comments
        Item Comments

    .PARAMETER RemarcableSKU
        Remarcable item code. Needed to pull Remarcable image and item description.

    .PARAMETER UPCGeneric
        Used to pull Remarcable image and description in absence of Remarcable SKU.

    .PARAMETER ManufacturerName
        This string has to match exact manufacturer name on Remarcable. Otherwise, manufacturer will be added as a comment.

    .PARAMETER ManufacturerStockNumber
        This is the manufacturer stock number value.

    .PARAMETER Quantity
        Item quantity. This is the quantity pre-filled for direct purchase.

    .PARAMETER TotalQuantity
        This is the item overall quantity.

    .PARAMETER ReleasedQuantity
        This is the quantity already purchased or released.

    .PARAMETER UnitPrice
        Item unit price per each.

    .PARAMETER Unit
        EA / FT

    .PARAMETER UnitOfMeasurement
        1, 100, 1000

    .PARAMETER PhaseCode
        Item phase code

    .PARAMETER CostCode
        Item cost code

    .PARAMETER WBSCode1
        Item wbs code

    .PARAMETER SpoolNumber
        Only used for wire spool

    .PARAMETER SpoolTag
        Only used for wire spool

    .PARAMETER LayerNumber
        Only used for wire spool

    .PARAMETER LayerTag
        Only used for wire spool

    .PARAMETER WireNumber
        Only used for wire spool

    .PARAMETER WireTag
        Only used for wire spool

    .PARAMETER IsSubstituteAllowed
        Item attribute to allow substitution
#>
Function New-ProjectListItem {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string] $Description,
        [string] $Comments,
        [string] $RemarcableSKU,
        [int] $UPCGeneric,
        [string] $ManufacturerName,
        [string] $ManufacturerStockNumber,
        [int] $Quantity,
        [int] $TotalQuantity,
        [int] $ReleasedQuantity,
        [float] $UnitPrice,
        [string] $Unit,
        [int] $UnitOfMeasurement,
        [string] $PhaseCode,
        [string] $CostCode,
        [string] $WBSCode1,
        [int] $SpoolNumber,
        [string] $SpoolTag,
        [int] $LayerNumber,
        [string] $LayerTag,
        [int] $WireNumber,
        [string] $WireTag,
        [switch] $IsSubstituteAllowed
    )
    Process {
        $Item = [ProjectListItem]::new($Description)

        $PSBoundParameters.Keys.ForEach{
            $Item.$_ = $PSBoundParameters[$_]
        }

        return $Item
    }
}