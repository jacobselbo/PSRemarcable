class PhaseCode {
    [string] $Code
    [string] $Name

    hidden $Serialization = @{
        code = "Code"
        name = "Name"
    }

    PhaseCode($Code, $Name) {
        $this.Code = $Code
        $this.Name = $Name
    }

    PhaseCode($InputTable) {
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