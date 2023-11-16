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
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $IsJob = $null

        if ($OnlyJobs -and !$OnlyWorkOrders) {
            $IsJob = $true
        } elseif ($OnlyWorkOrders -and !$OnlyJobs) {
            $IsJob = $false
        }

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/ListProject/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            account_email = $script:RemarcableClient.APICredential.UserName
            search = $Search
            order = $Order
            current_status = $CurrentStatus
            main_job_num = $MainJobNumber
            is_job = $IsJob
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method GET | Get-PaginationResult
        } catch {
            Write-Error "Failed to retrieve Remarcable Project"
            Write-Error $_
        }
    }
}