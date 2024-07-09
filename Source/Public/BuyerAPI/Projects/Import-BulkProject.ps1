<#
    .SYNOPSIS
        Bulk imports new or updated projects

    .DESCRIPTION
        Bulk imports new or updated projects

    .PARAMETER Projects
        Project Objects to create or update

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=103
#>
Function Import-BulkProject {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline)]
        [Project[]]
        $Projects
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/BulkImportProject/" -Method POST -JSON -Parameters @{
            company_branch_id = $CompanyBranchID
            json_data = @($Projects | ForEach-Object { $_.Serialize() })
        }
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters
        } catch {
            Write-Error "Failed to bulk import project"
            Write-Error $_
        }
    }
}