<#
    .SYNOPSIS
        Gets a list of asset requests based of paramters

    .DESCRIPTION
        Gets a list of asset requests based of paramters

    .PARAMETER Last
        Integer representing last n days. Default is 90 days if not provided

    .PARAMETER ProjectID
        Project ID to get asset requests from

    .PARAMETER JobNumber
        Project job number to get asset requets from

    .PARAMETER OwnerEmail
        Email of owner

    .PARAMETER FromWarehouseID
        Warehouse ID where item is request from or returned assets come from

    .PARAMETER WarehouseID
        ID of warehouse where asset request is going to

    .PARAMETER RequestType
        "project", "warehouse", "owner", "return". If not provided returns all requests

    .PARAMETER RequestStatus
        List of "new", "acked", "partly shipped", "picked", "partly recieved", "complete", "canceled". If not provided returns all statuses

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=235
#>
Function Search-AssetRequest {
    [CmdletBinding()]
    param (
        [int]
        $Last,

        [string]
        $ProjectID,
        [string]
        $JobNumber,

        [mailaddress]
        $OwnerEmail,

        [string]
        $FromWarehouseID,
        [string]
        $WarehouseID,

        [string]
        [ValidateSet("project", "warehouse", "owner", "return")]
        $RequestType,
        [string[]]
        [ValidateSet("new", "acked", "partly shipped", "picked", "partly received", "complete", "canceled")]
        $RequestStatus
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/ListToolRequest/" -Method GET -Parameters @{
            last = $Last
            project_id = $ProjectID
            job_num = $JobNumber
            owner_email = $OwnerEmail
            from_warehouse_id = $FromWarehouseID
            warehouse_id = $WarehouseID
            request_type = $RequestType
            request_status = $RequestStatus
        }
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters | Get-PaginationResult
        } catch {
            Write-Error "Failed to find Remarcable asset requests"
            Write-Error $_
        }
    }
}