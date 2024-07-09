<#
    .SYNOPSIS
        Get project from project ID

    .DESCRIPTION
        Get project from project ID

    .PARAMETER ProjectID
        Remarcable Project ID

    .PARAMETER AsClass
        Returns Project Class instead of Raw data. Perferable if Import-BulkProject or Import-Project are going to be used with simple data changes.

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=67
#>
Function Get-Project {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string]
        $ProjectID,

        [switch]
        $AsClass
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/RetrieveProject/" -Method GET -Parameters @{
            project_id = $ProjectID
        }
    }
    Process {
        try {
            $Data = Invoke-RestMethod @RequestParameters

            if ($AsClass.IsPresent) {
                Return [Project]::new($Data)
            } else {
                Return $Data
            }
        } catch {
            Write-Error "Failed to retrieve Remarcable Project"
            Write-Error $_
        }
    }
}