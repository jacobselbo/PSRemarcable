class PriceFileItem : Serializable {
    [float] $Price
    [string] $StockNumber
    [string] $UnitOfMeasurement
    [string] $Description
    [string] $SKU
    [string] $UPC

    hidden $Serialization = @{
        price = "Price"
        uom = "UnitOfMeasurement"
        upc = "UPC"
        description = "Description"
        stock_num = "StockNumber"
        sku = "SKU"
    }

    PriceFileItem($StockNumber, $Description, $SKU, $UPC, $Price, $UnitOfMeasurement) {
        $this.StockNumber = $StockNumber
        $this.Description = $Description
        $this.SKU = $SKU
        $this.UPC = $UPC
        $this.Price = $Price
        $this.UnitOfMeasurement = $UnitOfMeasurement
    }

    PriceFileItem([hashtable] $InputTable) : base($InputTable) { }
}