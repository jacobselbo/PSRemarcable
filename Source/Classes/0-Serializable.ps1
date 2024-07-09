class Serializable {
    Serializable([hashtable] $InputTable) {
        foreach ($Row in $InputTable.GetEnumerator()) {
            $this.($this.Serialization.($Row.Name)) = $Row.Value
        }
    }

    Serializable() { }

    [hashtable] Serialize() {
        $Result = @{}

        foreach ($Row in $this.Serialization.GetEnumerator()) {
            $Value = $this.($Row.Value)

            if ($Value -is [mailaddress]) {
                $Value = $Value.Address
            }

            $Result.($Row.Name) = $Value
        }

        return $Result
    }
}