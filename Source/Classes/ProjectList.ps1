class ProjectList {
    [string] $ListName
    [string] $ParentListName
    [string] $ListType
    [ProjectListItem[]] $ProjectListItems

    hidden $Serialization = @{
        list_name = "ListName"
        parent_list_name = "ParentListName"
        list_type = "ListType"
        list_items = "ProjectListItems"
    }

    ProjectList($ListName, $ListType, $ProjectListItems) {
        $this.ListName = $ListName
        $this.ListType = $ListType
        $this.ProjectListItems = $ProjectListItems
    }

    ProjectList($InputTable) {
        foreach ($Row in $InputTable.GetEnumerator()) {
            $SerializedName = $Row.Name
            $ClassName = $this.Serialization.$SerializedName
            $InputValue = $Row.Value

            if ($SerializedName -eq "list_items") {
                $this.$ClassName = @($InputValue | ForEach-Object { [ProjectListItem]::new($_) })
            } else {
                $this.$ClassName = $InputValue
            }
        }
    }

    [hashtable] Serialize() {
        $Result = @{}

        foreach ($Row in $this.Serialization.GetEnumerator()) {
            if ($null -ne $this.($Row.Value)) {
                $SerializedName = $Row.Name
                $ClassName = $Row.Value

                if ($SerializedName -eq "list_items") {
                    $Result.$SerializedName = @($this.$ClassName | ForEach-Object {$_.Serialize() })
                } else {
                    $Result.$SerializedName = $this.$ClassName
                }
            }
        }

        return $Result
    }
}