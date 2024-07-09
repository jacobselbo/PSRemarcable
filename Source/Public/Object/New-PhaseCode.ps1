<#
    .SYNOPSIS
        Creates a Phase Code Object for Project use

    .DESCRIPTION
        Creates a Phase Code Object for Project use. This method is used to create code readability

    .PARAMETER Code
        Phase Code

    .PARAMETER Name
        Name of Phase Code

    .PARAMETER Raw
        Allows raw hashtable input. Used for data manipulation
#>
Function New-PhaseCode {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [string]
        $Code,

        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [string]
        $Name,

        [Parameter(Mandatory = $true, ParameterSetName = "Raw")]
        [hashtable]
        $Raw
    )
    Process {
        if ($Raw) {
            return [PhaseCode]::new($Raw)
        } else {
            return [PhaseCode]::new($Code, $Name)
        }
    }
}