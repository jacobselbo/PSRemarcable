<#
    .SYNOPSIS
        Retrieves a list of asset rates

    .DESCRIPTION
        Retrieves a list of asset rates

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=1165

    .OUTPUTS
        Array of asset rates, with each rate: (id, aggregated_config_code, unit_price, labor_rate, image_link, created_date)
#>
Function Get-AssetRate {
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/ListModelConfigurationRate/" -Method GET
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters | Get-PaginationResult
        } catch {
            Write-Error "Failed to retrieve Remarcable asset rates"
            Write-Error $_
        }
    }
}