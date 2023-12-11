<#
    .SYNOPSIS
        Gets a list of price files

    .DESCRIPTION
        Gets a list of price files

    .PARAMETER Search
        Searches a price file and company names for keywords

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=69
#>
Function Search-PriceFile {
    [CmdletBinding()]
    param (
        [string]
        $Search
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/ListPriceFile/" -Method GET -Parameters @{
            search_terms = $Search
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