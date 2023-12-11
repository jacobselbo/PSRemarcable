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
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/RetrieveToolRequest/" -Method GET -Parameters @{
            tool_request_id = $ToolRequestID
        }
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters
        } catch {
            Write-Error "Failed to retrieve Remarcable asset requests"
            Write-Error $_
        }
    }
}