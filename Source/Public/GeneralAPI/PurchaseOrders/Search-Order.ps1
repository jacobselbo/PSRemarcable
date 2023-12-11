<#
    .SYNOPSIS
        Retrieve a list of PO items

    .DESCRIPTION
        Retrieve a list of PO items

    .PARAMETER ProjectID
        ID of project to retrieve POs for

    .PARAMETER JobNumber
        Job Number to retrieve POs for

    .PARAMETER LastDays
        Integear amount that represent the last n days.

    .PARAMETER StartDate
        Date when to start searching for POs that have been updated

    .PARAMETER EndDate
        Date when to end searching for POs that have been updated

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=64
#>
Function Search-Order {
    [CmdletBinding()]
    param (
        [string]
        $ProjectID,
        [string]
        $JobNumber,

        [Parameter(Mandatory = $true, ParameterSetName = "WithLastDays")]
        [int]
        $LastDays,

        [Parameter(Mandatory = $true, ParameterSetName = "WithDate")]
        [datetime]
        $StartDate,
        [Parameter(Mandatory = $true, ParameterSetName = "WithDate")]
        [datetime]
        $EndDate
    )
    Begin {
        if ($StartDate) {
            ($EndDate - $StartDate).TotalDays | Assert-LessThanEqualTo -Other 180 -Message "StartDate and EndDate range cannot exceed 180 days"
        }

        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/ListPO/" -Method GET -Parameters @{
            project_id = $ProjectID
            job_num = $JobNumber
            last = $LastDays
            start_date = $StartDate ? $StartDate.ToString("o") : $null # Create ISO 8601 Date Format
            end_date = $EndDate ? $EndDate.ToString("o") : $null # Create ISO 8601 Date Format
        }
    }
    Process {
       try {
            return Invoke-RestMethod @RequestParameters | Get-PaginationResult
        } catch {
            Write-Error "Failed to retrieve Remarcable purchase orders"
            Write-Error $_
        }
    }
}