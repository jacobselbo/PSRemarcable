---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Search-OrderItem

## SYNOPSIS
Retrieve a list of PO items.

## SYNTAX

### WithPOIDS
```
Search-OrderItem -POIDs <String[]> [<CommonParameters>]
```

### WithPONumbers
```
Search-OrderItem -PONumbers <String[]> [<CommonParameters>]
```

### WithLastDays
```
Search-OrderItem -LastDays <Int32> [<CommonParameters>]
```

### WithDate
```
Search-OrderItem -StartDate <DateTime> -EndDate <DateTime> [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Search-OrderItem -PONumbers @("28832O", "583621P")
```

## PARAMETERS

### -EndDate
Date when to end searching for POs that have been updated.

```yaml
Type: DateTime
Parameter Sets: WithDate
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LastDays
Integear amount that represent the last n days.

```yaml
Type: Int32
Parameter Sets: WithLastDays
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -POIDs
Array of PO IDs to retrieve.

```yaml
Type: String[]
Parameter Sets: WithPOIDS
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PONumbers
Array of PO numbers to retrieve.

```yaml
Type: String[]
Parameter Sets: WithPONumbers
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartDate
Date when to start searching for POs that have been updated.

```yaml
Type: DateTime
Parameter Sets: WithDate
Aliases:

Required: True
Position: Named
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
[
    {
        "id": "3c5b3589-2054-4db9-b8f7-66ac8612c9a4",
        "my_id": null,
        "status": "pending",
        "po_line_num": null,
        "description": "1/2\" EMT Conduit",
        "category": "Conduit",
        "sub_category": "Metallic Conduit",
        "total_quantity": 70,
        "ack_total_quantity": 70,
        "final_unit": "ft",
        "phase_code": "",
        "project_id": "39271fa3-19c7-48f1-9a25-0789fe907775",
        "job_num": "365678-4A",
        "unit_price": null,
        "unit_price_unit": "/100ft",
        "extended_price": null,
        "comments": "",
        "seller_comments": "",
        "shipped_quantity": null,
        "back_ordered_quantity": null,
        "expected_shipping_date": null,
        "purchase_order_id": "b5d99bc8-5542-45ee-ad10-1ed2c93b67c6",
        "created_from_get_po": false,
        "purchase_order_number": null,
        "purchase_order_status": "pending",
        "purchase_order_updated_on": "2023-09-01T20:10:43.839976Z",
        "purchase_order_submitted_on": null,
        "requested_delivery_date": null,
        "supplying_company_name": "",
        "purchase_order_name": "",
        "is_substitute_allowed": true,
        "wbs_code_1": "789",
        "upc": null,
        "manufacturer_stock_num": ""
        },
        {
        "id": "82f5157d-1384-4faa-b93b-2946db2c94bd",
        "my_id": null,
        "status": "pending",
        "po_line_num": null,
        "description": "1\" EMT Conduit",
        "category": "Conduit",
        "sub_category": "Metallic Conduit",
        "total_quantity": 50,
        "ack_total_quantity": 50,
        "final_unit": "ft",
        "phase_code": "",
        "project_id": "39271fa3-19c7-48f1-9a25-0789fe907775",
        "job_num": "365678-4A",
        "unit_price": null,
        "unit_price_unit": "/100ft",
        "extended_price": null,
        "comments": "",
        "seller_comments": "",
        "shipped_quantity": null,
        "back_ordered_quantity": null,
        "expected_shipping_date": null,
        "purchase_order_id": "bee73dc4-0470-4475-b3c4-86ed7060eda9",
        "created_from_get_po": false,
        "purchase_order_number": null,
        "purchase_order_status": "pending",
        "purchase_order_updated_on": "2023-09-01T20:53:13.858083Z",
        "purchase_order_submitted_on": null,
        "requested_delivery_date": null,
        "supplying_company_name": "",
        "purchase_order_name": "",
        "is_substitute_allowed": true,
        "wbs_code_1": "11",
        "upc": null,
        "manufacturer_stock_num": ""
    },
    .
    .
    .
]
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=139