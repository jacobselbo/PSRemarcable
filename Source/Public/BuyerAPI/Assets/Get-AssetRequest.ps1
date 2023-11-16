<#
    .SYNOPSIS
        Retrieve an asset request

    .DESCRIPTION
        Retrieve an asset request

    .PARAMETER ToolRequestID
        ID of asset request to generate response from

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=236
#>
Function Get-AssetRequest {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $ToolRequestID
    )
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/RetrieveToolRequest/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
            account_email = $script:RemarcableClient.APICredential.UserName
            tool_request_id = $ToolRequestID
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method GET
        } catch {
            Write-Error "Failed to retrieve Remarcable asset requests"
            Write-Error $_
        }
    }
}