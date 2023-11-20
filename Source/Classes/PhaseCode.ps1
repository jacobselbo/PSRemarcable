class PhaseCode : Serializable {
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

    PhaseCode([hashtable] $InputTable) : base($InputTable) { }
}