class ProjectListItem : Serializable {
    [string] $Description
    [string] $Comments
    [string] $RemarcableSKU
    [string] $UPCGeneric
    [string] $ManufacturerName
    [string] $ManufacturerStockNumber
    [string] $Quantity
    [string] $TotalQuantity
    [string] $ReleasedQuantity
    [string] $UnitPrice
    [string] $Unit
    [string] $UnitOfMeasurement
    [string] $PhaseCode
    [string] $CostCode
    [string] $WBSCode1
    [string] $SpoolNumber
    [string] $SpoolTag
    [string] $LayerNumber
    [string] $LayerTag
    [string] $WireNumber
    [string] $WireTag
    [string] $IsSubstituteAllowed

    hidden $Serialization = @{
        description = "Description"
        comments = "Comments"
        remarcable_sku = "RemarcableSKU"
        upc_generic = "UPCGeneric"
        manufacturer_name = "ManufacturerName"
        manufacturer_stock_num = "ManufacturerStockNumber"
        quantity = "Quantity"
        total_quantity = "TotalQuantity"
        released_quantity = "ReleasedQuantity"
        unit_price = "UnitPrice"
        unit = "Unit"
        uom = "UnitOfMeasurement"
        phase_code = "PhaseCode"
        cost_code = "CostCode"
        wbs_code_1 = "WBSCode1"
        spool_number = "SpoolNumber"
        spool_tag = "SpoolTag"
        layer_number = "LayerNumber"
        layer_tag = "LayerTag"
        wire_number = "WireNumber"
        wire_tag = "WireTag"
        is_substitute_allowed = "IsSubstituteAllowed"
    }

    ProjectListItem([string] $Description) {
        $this.Description = $Description
    }

    ProjectListItem([hashtable] $InputTable) : base($InputTable) { }
}