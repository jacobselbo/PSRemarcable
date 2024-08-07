<#
    .SYNOPSIS
        Create new price file items or update existing ones

    .DESCRIPTION
        Create new price file items or update existing ones

    .PARAMETER PriceFileID
        Remarcable Price File ID

    .PARAMETER BuyerCompanyID
        Buying company Remarcable ID. Can be obtained from price file update email of price file page

    .PARAMETER PriceFileItems
        List of PriceFileItem Objects

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=212
#>
Function Import-PriceFile {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $PriceFileID,

        [Parameter(Mandatory = $true)]
        [string]
        $BuyerCompanyID,

        [Parameter(Mandatory = $true, ValueFromPipeline)]
        [PriceFileItem[]]
        $PriceFileItems
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/general_api/v1/ImportPriceFile/" -Method POST -JSON -Parameters @{
            price_file_id = $PriceFileID
            buyer_company_id = $BuyerCompanyID
            json_data = @($PriceFileItems | ForEach-Object ${ $_.Serialize() })
        } 
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters
        } catch {
            Write-Error "Failed to import price file items"
            Write-Error $_
        }
    }
}