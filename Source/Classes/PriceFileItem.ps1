class PriceFileItem {
    [float] $Price
    [string] $StockNumber
    [string] $UnitOfMeasurement
    [string] $Description
    [string] $SKU
    [string] $UPC

    PriceFileItem($StockNumber, $Description, $SKU, $UPC, $Price, $UnitOfMeasurement) {
        $this.StockNumber = $StockNumber
        $this.Description = $Description
        $this.SKU = $SKU
        $this.UPC = $UPC
        $this.Price = $Price
        $this.UnitOfMeasurement = $UnitOfMeasurement
    }

    [hashtable] Seralize() {
        return @{
            price = $this.Price
            uom = $this.UnitOfMeasurement
            upc = $this.UPC
            description = $this.Description
            stock_num = $this.StockNumber
            sku = $this.SKU
        }
    }
}