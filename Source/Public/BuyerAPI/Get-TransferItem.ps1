<#
    .SYNOPSIS
        Retrieves a list of transfer items

    .DESCRIPTION
        Retrieves a list of transfer items

    .PARAMETER StartDate
        Date when to start listing transfer items

    .PARAMETER EndDate
        Date when to end listing transfer items

    .PARAMETER ProjectIDList
        List of projects to include in transfer item report

    .PARAMETER ToolTransferID
        ID of transfer report to include in response

    .PARAMETER ToolItemID
        ID of item to include in transfer report

    .PARAMETER ToolModelID
        ID of model to include in transfer report

    .PARAMETER TransferDirection
        Direction of transfer to inclue in transfer report.
        Either inbound or outbound transfers

    .PARAMETER SearchTerms
        Search terms to look for in transfers to include in response.

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=1238
#>
Function Get-TransferItem {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = "WithDate")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithProjectIdList")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolTransferID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolItemID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolModelID")]
        [datetime]
        $StartDate,
        [Parameter(Mandatory = $true, ParameterSetName = "WithDate")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithProjectIdList")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolTransferID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolItemID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolModelID")]
        [datetime]
        $EndDate,

        [Parameter(Mandatory = $true, ParameterSetName = "WithProjectIdList")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithDate")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolTransferID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolItemID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolModelID")]
        [string[]]
        $ProjectIDList,
        [Parameter(Mandatory = $true, ParameterSetName = "WithToolTransferID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithProjectIdList")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithDate")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolItemID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolModelID")]
        [string]
        $ToolTransferID,
        [Parameter(Mandatory = $true, ParameterSetName = "WithToolItemID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithProjectIdList")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolTransferID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithDate")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolModelID")]
        [string]
        $ToolItemID,
        [Parameter(Mandatory = $true, ParameterSetName = "WithToolModelID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithProjectIdList")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolTransferID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithToolItemID")]
        [Parameter(Mandatory = $false, ParameterSetName = "WithDate")]
        [string]
        $ToolModelID,

        [string]
        [ValidateSet("inboud", "outbound")]
        $TransferDirection,
        [string]
        $SearchTerms
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/ListTransferItem/" -Method GET -Parameters @{
            start_date = $StartDate ? $StartDate.ToString("o") : $null # Create ISO 8601 Date Format
            end_date = $EndDate ? $EndDate.ToString("o") : $null # Create ISO 8601 Date Format
            project_id_list = $ProjectIdList
            tool_transfer_id = $ToolTransferID
            tool_item_id = $ToolItemID
            tool_model_id = $ToolModelID
            transfer_direction = $TransferDirection
            search_terms = $SearchTerms
        }
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters | Get-PaginationResult
        } catch {
            Write-Error "Failed to retrieve Remarcable transfer items"
            Write-Error $_
        }
    }
}