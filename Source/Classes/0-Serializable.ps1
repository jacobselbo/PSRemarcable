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
            $Result.($Row.Name) = $this.($Row.Value)
        }

        return $Result
    }
}