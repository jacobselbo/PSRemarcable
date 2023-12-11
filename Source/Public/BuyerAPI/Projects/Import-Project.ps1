<#
    .SYNOPSIS
        Creates a new project or updates an existing project

    .DESCRIPTION
        Creates a new project or updates an existing project

    .PARAMETER Project
        Project Object to create or update

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=68
#>
Function Import-Project {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)]
        [Project]
        $Project
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/CreateUpdateProject/" -Method POST -Parameters $Project.Serialize()
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters
        } catch {
            Write-Error "Failed to import project"
            Write-Error $_
        }
    }
}