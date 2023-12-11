<#
    .SYNOPSIS
        Retrieve a list of all remarcable asset items

    .DESCRIPTION
        Retrieve a list of all remarcable asset items

    .PARAMETER ModelType
        Type of asset model to search for
        "Tools", "Prefab", "Stock", "Temp Power"

    .PARAMETER Category
        Category of asset items to search for. Can be found from Warehouse tab/tool model list view

    .PARAMETER WarehouseID
        ID of warehouse to search in. Can be found in warehouse settings view

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=1091

    .OUTPUTS
        Hashtable with "model_type", "category", "warehouse_id", "avil_items", "on_hand_qty", "commited_qty", and an array of assets named "asset_list"
#>
Function Get-AssetItem {
    [CmdletBinding()]
    Param (
        [string]
        [ValidateSet("Tools", "Prefab", "Stock", "Temp Power")]
        $ModelType,

        [string]
        $Category,

        [string]
        $WarehouseID
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/ListAssetItem/" -Method GET -Parameters @{
            model_type = $ModelType
            category = $Category
            warehouse_id = $WarehouseID
        }
    }
    Process {
        try {
            $PagedResults = Invoke-RestMethod @RequestParameters
            $PagedResults.results.asset_list = Get-PaginationResult $PagedResults "asset_list"

            return $PagedResults.results
        } catch {
            Write-Error "Failed to retrieve Remarcable asset items"
            Write-Error $_
        }
    }
}