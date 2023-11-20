<#
    .SYNOPSIS
        Get an account system order information based off PO number

    .DESCRIPTION
        Get an account system order information based off PO number

    .PARAMETER PONumber
        Purchase order number

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=73
#>
Function Get-ERPOrder {
    [CmdletBinding()]
    param (
        [string]
        $PONumber
    )
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/RetrieveERPOrder/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            account_email = $script:RemarcableClient.APICredential.UserName
            po_number = $PONumber
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method GET
        } catch {
            Write-Error "Failed to retrieve Remarcable Account system data"
            Write-Error $_
        }
    }
}