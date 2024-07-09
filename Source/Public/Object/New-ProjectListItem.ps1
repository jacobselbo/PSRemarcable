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

    .PARAMETER Raw
        Allows raw hashtable input. Used for data manipulation
#>
Function New-ProjectListItem {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")] [string] $Description,
        [Parameter(ParameterSetName = "NotRaw")] [string] $Comments,
        [Parameter(ParameterSetName = "NotRaw")] [string] $RemarcableSKU,
        [Parameter(ParameterSetName = "NotRaw")] [int] $UPCGeneric,
        [Parameter(ParameterSetName = "NotRaw")] [string] $ManufacturerName,
        [Parameter(ParameterSetName = "NotRaw")] [string] $ManufacturerStockNumber,
        [Parameter(ParameterSetName = "NotRaw")] [int] $Quantity,
        [Parameter(ParameterSetName = "NotRaw")] [int] $TotalQuantity,
        [Parameter(ParameterSetName = "NotRaw")] [int] $ReleasedQuantity,
        [Parameter(ParameterSetName = "NotRaw")] [float] $UnitPrice,
        [Parameter(ParameterSetName = "NotRaw")] [string] $Unit,
        [Parameter(ParameterSetName = "NotRaw")] [int] $UnitOfMeasurement,
        [Parameter(ParameterSetName = "NotRaw")] [string] $PhaseCode,
        [Parameter(ParameterSetName = "NotRaw")] [string] $CostCode,
        [Parameter(ParameterSetName = "NotRaw")] [string] $WBSCode1,
        [Parameter(ParameterSetName = "NotRaw")] [int] $SpoolNumber,
        [Parameter(ParameterSetName = "NotRaw")] [string] $SpoolTag,
        [Parameter(ParameterSetName = "NotRaw")] [int] $LayerNumber,
        [Parameter(ParameterSetName = "NotRaw")] [string] $LayerTag,
        [Parameter(ParameterSetName = "NotRaw")] [int] $WireNumber,
        [Parameter(ParameterSetName = "NotRaw")] [string] $WireTag,
        [Parameter(ParameterSetName = "NotRaw")] [bool] $IsSubstituteAllowed,

        [Parameter(Mandatory = $true, ParameterSetName = "Raw")] [hashtable] $Raw
    )
    Process {
        if ($Raw) {
            return [ProjectListItem]::new($Raw)
        } else {
            $Item = [ProjectListItem]::new($Description)

            $PSBoundParameters.Keys.ForEach{
                $Item.$_ = $PSBoundParameters[$_]
            }

            return $Item
        }
    }
}