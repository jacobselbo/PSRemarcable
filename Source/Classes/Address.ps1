class Address {
    [string] $Field1
    [string] $Field2
    [string] $City
    [string] $State
    [string] $ZIP
    [string] $Country
    [string] $ShippingNote

    hidden $Serialization = @{
        note = "ShippingNote"
        Field_1 = "Field1"
        Field_2 = "Field2"
        city = "City"
        state = "State"
        zip = "ZIP"
        country = "Country"
    }

    Address($Field1, $City, $State, $ZIP, $Country) {
        $this.Field1 = $Field1
        $this.City = $City
        $this.State = $State
        $this.ZIP = $ZIP
        $this.Country = $Country
    }

    Address($InputTable) {
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