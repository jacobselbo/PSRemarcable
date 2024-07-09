<#
    .SYNOPSIS
        Gets a list of projects filtered based off paramteers

    .DESCRIPTION
        Gets a list of projects filtered based off paramteers

    .PARAMETER Search
        Returns projects that contain the given string in the name or description. Case-insensitive

    .PARAMETER Order
        Order to return project list order, either "name" or "created_date". If the reverse of "name" or "created_date" is wanted add prefix of "-"

    .PARAMETER CurrentStatus
        Retrieve projects based on being "active", "archived", or "deleted"

    .PARAMETER MainJobNumber
        Choose a job number to retrieve for projects

    .PARAMETER OnlyJobs
        Allows you to choose to only return jobs

    .PARAMETER OnlyWorkOrders
        Allows you to return to only work orders

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=66
#>
Function Search-Project {
    [CmdletBinding()]
    param (
        [string]
        $Search,

        [string]
        [ValidateSet("name", "-name", "created_date", "-created_date")]
        $Order,

        [string]
        [ValidateSet("active", "archived", "deleted")]
        $CurrentStatus,
        [string]
        $MainJobNumber,

        [switch]
        $OnlyJobs,
        [switch]
        $OnlyWorkOrders
    )
    Begin {
        $IsJob = $null

        if ($OnlyJobs.IsPresent -and !$OnlyWorkOrders.IsPresent) {
            $IsJob = $true
        } elseif ($OnlyWorkOrders.IsPresent -and !$OnlyJobs.IsPresent) {
            $IsJob = $false
        }

        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/ListProject/" -Method GET -Parameters @{
            search = $Search
            order = $Order
            current_status = $CurrentStatus
            main_job_num = $MainJobNumber
            is_job = $IsJob
        }
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters | Get-PaginationResult
        } catch {
            Write-Error "Failed to retrieve Remarcable Project"
            Write-Error $_
        }
    }
}