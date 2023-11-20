<#
    .SYNOPSIS
        Sends a PO Number and phase code to an existing project to be used for any upcoming order.

    .DESCRIPTION
        Sends a PO Number and phase code to an existing project to be used for any upcoming order. Remarcable will store the recieved PO nad phase code in a buffer till it's been consumed by the user.

    .PARAMETER ProjectID
        ID of Project to send PO Number

    .PARAMETER UserEmail
        Email of user to use PO number, and needs to be owner of project

    .PARAMETER PONumber
        Any string up to 50 characters

    .PARAMETER PhaseCode
        Any string up to 50 characters

    .PARAMETER JobNumber
        Any string up to 100 characters

    .PARAMETER OrderName
        Any string up to 500 characters

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=71
#>
Function Import-PONumber {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $ProjectID,

        [Parameter(Mandatory = $true)]
        [mailaddress]
        $UserEmail,

        [Parameter(Mandatory = $true)]
        [ValidateLength(1, 50)]
        [string]
        $PONumber,
        [ValidateLength(1, 50)]
        [string]
        $PhaseCode,
        [ValidateLength(1, 100)]
        [string]
        $JobNumber,

        [ValidateLength(1, 500)]
        [string]
        $OrderName
    )
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/SendPONum/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            project_id = $ProjectID
            user_email = $UserEmail
            po_number = $PONumber
            phase_code = $PhaseCode
            job_num = $JobNumber
            order_name = $OrderName
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method POST
        } catch {
            Write-Error "Failed to send Remarcable PO Number"
            Write-Error $_
        }
    }
}