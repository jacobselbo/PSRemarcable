<#
    .SYNOPSIS
        Creates a Phase Code Object for Project use

    .DESCRIPTION
        Creates a Phase Code Object for Project use. This method is used to create code readability

    .PARAMETER Code
        Phase Code

    .PARAMETER Name
        Name of Phase Code
#>
Function New-PhaseCode {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $Code,

        [Parameter(Mandatory = $true)]
        [string]
        $Name
    )
    Process {
        return [PhaseCode]::new($Code, $Name)
    }
}