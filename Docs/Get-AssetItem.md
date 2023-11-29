---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Get-AssetItem

## SYNOPSIS
Retrieve a list of all Remarcable asset items.

## SYNTAX

```
Get-AssetItem [[-ModelType] <String>] [[-Category] <String>] [[-WarehouseID] <String>] [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-AssetItem
```

### Example 2
```powershell
PS C:\> Get-AssetItem -ModelType Tools
```

### Example 3
```powershell
PS C:\> Get-AssetItem -Category "Air Tools"
```

### Example 4
```powershell
PS C:\> Get-AssetItem -WarehouseID "aa1f0812-961e-4536-9d9f-22db4207429e"
```

### Example 5
```powershell
PS C:\> Get-AssetItem -WarehouseID "aa1f0812-961e-4536-9d9f-22db4207429e" -Category "Air Tools" -ModelType "Tools"
```

Any combination of searchable fields are allowed.

## PARAMETERS

### -Category
Category of asset items to search for. Can be found from Warehouse tab/tool mode list view.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ModelType
Type of asset model to search for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Tools, Prefab, Stock, Temp Power

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WarehouseID
ID of warehosue to search in. Can be found in warehouse settings view.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

```json
{
    "model_type": "Tools",
    "category": "Air Tools",
    "warehouse_id": "aa1f0812-961e-4536-9d9f-22db4207429e",
    "avail_items": 8,
    "on_hand_qty": 7,
    "committed_qty": 1,
    "asset_list": [
        {
            "id": "e962e232-faa1-4472-bb2f-3a4f6ea05da5",
            "name": "test item1",
            "status": "ok",
            "quantity": 1,
            "tool_model_id": "070ce48a-cf80-4eea-b359-5eeabe86b34b",
            "created_date": "2023-05-17T13:14:40.324120Z",
            "manufacturer_name": "",
            "manufacturer_stock_num": null,
            "last_calibrated_date": null,
            "expiry_date": null,
            "manufacturing_date": null,
            "purchased_date": null,
            "service_due_date": null,
            "serial_number": "",
            "barcode": "",
            "msrp": null,
            "model_msrp": 1800.0,
            "model_type": "Tools",
            "item_type": "Regular",
            "category": "Air Tools",
            "sub_category": "Air Compressor",
            "notes": null,
            "important_comments": null,
            "owner_name": null,
            "warehouse_name": "Urbandale",
            "original_title_owner_name": "Urbandale",
            "job_wo_number": "",
            "project_name": null
        },
        {
            "id": "9692902b-063e-482e-872f-718c69f1cecc",
            "name": "test item1",
            "status": "servicing",
            "quantity": 1,
            "tool_model_id": "070ce48a-cf80-4eea-b359-5eeabe86b34b",
            "created_date": "2023-05-17T13:05:05.733767Z",
            "manufacturer_name": "",
            "manufacturer_stock_num": null,
            "last_calibrated_date": null,
            "expiry_date": null,
            "manufacturing_date": null,
            "purchased_date": null,
            "service_due_date": null,
            "serial_number": "",
            "barcode": "",
            "msrp": null,
            "model_msrp": 1800.0,
            "model_type": "Tools",
            "item_type": "Regular",
            "category": "Air Tools",
            "sub_category": "Air Compressor",
            "notes": null,
            "important_comments": null,
            "owner_name": null,
            "warehouse_name": "Urbandale",
            "original_title_owner_name": "Urbandale",
            "job_wo_number": "",
            "project_name": null
        },
        .
        .
        .
    ]
}
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=1091