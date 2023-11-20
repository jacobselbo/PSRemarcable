class StockFileItem : Serializable {
    [int] $StockQuantity
    [int] $BranchStockQuantity
    [string] $SKU

    hidden $Serialization = @{
        sku = "SKU"
        stock_quantity = "StockQuantity"
        branch_stock_quantity = "BranchStockQuantity"
    }

    StockFileItem($SKU, $StockQuantity, $BranchStockQuantity) {
        $this.SKU = $SKU
        $this.StockQuantity = $StockQuantity
        $this.BranchStockQuantity = $BranchStockQuantity
    }

    StockFileItem([hashtable] $InputTable) : base($InputTable) { }
}