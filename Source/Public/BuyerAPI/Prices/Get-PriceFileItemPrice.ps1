<#
    .SYNOPSIS
        Gets a price file item price from a price file id

    .DESCRIPTION
        Gets a price file item price from a price file id

    .PARAMETER PriceFileID
        Remarcable Price File ID

    .PARAMETER AllowSubstitute
        If no PriceFileID is provided regardless of the AllowSubstitute value, the returned result will be the average of all direct UPC matches in all of the price files company wide;
        If PriceFileID is provided and AllowSubstitute is true, the system will return the prices for all direct UPC matches within the specified price file. In case there is no direct UPC match, it will return the average of all cross-referenced price file items within the specified price file;
        If PriceFileID is provided and AllowSubstitute is false, the system will return the prices only for all direct UPC matches within the specified price file.

    .PARAMETER UPCList
        List of UPC numbers to retrieve

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=70
#>
Function Get-PriceFileItemPrice {
    [CmdletBinding()]
    param (
        [string]
        $PriceFileID,

        [bool]
        $AllowSubstitute,

        [string[]]
        $UPCList
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/GetBuyerPriceFileItemPrice/" -Method POST -JSON -Parameters @{
            pricefile_id = $PriceFileID
            allow_substitute = $AllowSubstitute
            upc_list = $UPCList
        }
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters
        } catch {
            Write-Error "Failed to retrieve Remarcable Price File Item Prices"
            Write-Error $_
        }
    }
}