class StockFileItem {
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

    StockFileItem($InputTable) {
        foreach ($Row in $InputTable.GetEnumerator()) {
            $this.($this.Serialization.($Row.Name)) = $Row.Value
        }
    }

    [hashtable] Seralize() {
        $Result = @{}

        foreach ($Row in $this.Serialization.GetEnumerator()) {
            $Result.($Row.Name) = $this.($Row.Value)
        }

        return $Result
    }
}