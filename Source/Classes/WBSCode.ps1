class WBSCode : Serializable {
    [string] $Code
    [string] $Name

    hidden $Serialization = @{
        code = "Code"
        name = "Name"
    }

    WBSCode($Code, $Name) {
        $this.Code = $Code
        $this.Name = $Name
    }

    WBSCode([hashtable] $InputTable) : base($InputTable) { }
}