<#
    .SYNOPSIS
        Creates a project list and adds items to list on remarcable

    .DESCRIPTION
        Creates a project list and adds items to list on remarcable

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=321
#>
Function Import-ProjectList {
    [CmdletBinding()]
    param (
        [string]
        $ProjectID,
        [Parameter(Mandatory = $true)]
        [string]
        $JobNumber,

        [Parameter(ValueFromPipeline)]
        [ProjectList[]]
        $ProjectLists,

        [switch]
        $OverwriteExisting
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/CreateProjectList/" -Method POST -Parameters @{
            project_id = $ProjectID
            job_num = $JobNumber
            overwrite_existing = $OverwriteExisting
            project_lists = @($ProjectLists | ForEach-Object { $_.Serialize() })
        }
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters
        } catch {
            Write-Error "Failed to create project lists in Remarcable"
            Write-Error $_
        }
    }
}