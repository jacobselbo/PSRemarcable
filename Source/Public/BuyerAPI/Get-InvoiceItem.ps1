<#
    .SYNOPSIS
        Get a list of invoice items

    .DESCRIPTION
        Get a list of invoice items

    .PARAMETER SONumbers
        Sales Order Numbers

    .PARAMETER LastDays
        Represents the last number of days to pull sales orders from

    .PARAMETER StartDate
        Date when to start searching for Invoices that have been updated

    .PARAMETER EndDate
        Date when to end searching for Invoices that have been updated

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=174
#>
Function Get-InvoiceItem {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = "WithSONumbers")]
        [string[]]
        $SONumbers,

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

        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/ListInvoiceItem/" -Method GET -Parameters @{
            so_numbers = $SONumbers
            last = $LastDays
            start_date = $StartDate ? $StartDate.ToString("o") : $null # Create ISO 8601 Date Format
            end_date = $EndDate ? $EndDate.ToString("o") : $null # Create ISO 8601 Date Format
        }
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters | Get-PaginationResult
        } catch {
            Write-Error "Failed to retrieve Remarcable Invoice Items"
            Write-Error $_
        }
    }
}