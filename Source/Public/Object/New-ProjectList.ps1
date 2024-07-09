<#
    .SYNOPSIS
        Creates a new project list object

    .DESCRIPTION
        Creates a new project list object. Used for code readability

    .PARAMETER ListName
        The name of your list. This name will be used as a unique key for the list. In other words, if you send multiple lists with the same name, Remarcable will either aggregate all items or only accept the last list (depending on setting).

    .PARAMETER ParentListName
        If you wish to create a sub-list with a parent, you can pass in a parent list name.

    .PARAMETER ListType
        Valid values are "default", "scheduling". If scheduling is used, the system will not search the list under main search library.

    .PARAMETER ProjectListItems
        You can pass a list of project list you want to create, append, or overwrite.

    .PARAMETER Raw
        Allows raw hashtable input. Used for data manipulation
#>
Function New-ProjectList {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [Parameter(ParameterSetName = "NotRaw")] [string] $ListName,
        [Parameter(ParameterSetName = "NotRaw")] [string] $ParentListName,
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [ValidateSet("default", "scheduling")]
        [Parameter(ParameterSetName = "NotRaw")] [string] $ListType = "default",
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [Parameter(ParameterSetName = "NotRaw")] [ProjectListItem[]] $ProjectListItems,

        [Parameter(Mandatory = $true, ParameterSetName = "Raw")] [hashtable] $Raw
    )
    Process {
        if ($Raw) {
            return [ProjectList]::new($Raw)
        } else {
            $ProjectList = [ProjectList]::new($ListName, $ListType, $ProjectListItems)

            $PSBoundParameters.Keys.ForEach{
                $ProjectList.$_ = $PSBoundParameters[$_]
            }

            return $ProjectList
        }
    }
}