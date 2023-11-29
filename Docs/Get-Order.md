---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Get-Order

## SYNOPSIS
Gets a list of PO details based of order numbers or IDs.

## SYNTAX

### WithPOIDS
```
Get-Order -POIDs <String[]> [<CommonParameters>]
```

### WithPONumbers
```
Get-Order -PONumbers <String[]> [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-Order -POIDs @("9564b285-2fb7-469b-ba82-6cbba0cd842e", "65db015e-88df-4920-9476-1685baf87602")
```

### Example 2
```powershell
PS C:\> Get-Order -PONumbers @("65165152", "27557315")
```


## PARAMETERS

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

```json
[
    {
        "status": "pending",
        "created_from_get_po": false,
        "po_type": "Basic",
        "po_number": 65165152,
        "updated_on": "2023-09-01T20:10:43.839976Z",
        "phase_code": "",
        "wbs_code_1": "",
        "job_num": "365678-4A",
        "supplying_company": null,
        "submitting_person": null,
        "buyer_instruction": " No drop ship!",
        "supplying_company_branch": null,
        "buyer_terms": "distributor.terms.com",
        "submitted_on": null,
        "created_date": "2023-09-01T20:10:42.938197Z",
        "ack_order_tax": null,
        "ack_order_freight": null,
        "purchase_items": [
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
                "received_quantity": "0.0000",
                "unit_price": null,
                "unit_price_unit": "/100ft",
                "extended_price": null,
                "comments": "",
                "seller_comments": "",
                "shipped_quantity": null,
                "back_ordered_quantity": null,
                "expected_shipping_date": null,
                "upc": null,
                "manufacturer_stock_num": ""
            },
            {
                "id": "5g1c92a5-bcf0-4645-9260-6cb84ed87d5c",
                "my_id": null,
                "status": "ordered",
                "po_line_num": null,
                "description": "1/2\" EMT Conduit",
                "category": "Conduit",
                "sub_category": "Metallic Conduit",
                "total_quantity": 50,
                "ack_total_quantity": 50,
                "final_unit": "ft",
                "received_quantity": "0.0000",
                "unit_price": null,
                "unit_price_unit": "/100ft",
                "extended_price": null,
                "comments": "",
                "seller_comments": "",
                "shipped_quantity": null,
                "back_ordered_quantity": null,
                "expected_shipping_date": null,
                "upc": null,
                "manufacturer_stock_num": ""
            }
        ],
       .
       .
       .
    },
]
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=65