<#
    .SYNOPSIS
        Get price file from price file ID

    .DESCRIPTION
        Get price file from price file ID

    .PARAMETER PriceFileID
        Remarcable Price File ID

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=229
#>
Function Get-PriceFile {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $PriceFileID
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/GetBuyerPriceFileItems/" -Method GET -Parameters @{
            pricefile_id = $PriceFileID
        }
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters | Get-PaginationResult
        } catch {
            Write-Error "Failed to retrieve Remarcable Price Files"
            Write-Error $_
        }
    }
}