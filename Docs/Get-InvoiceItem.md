---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Get-InvoiceItem

## SYNOPSIS
Gets a list of invoice items based of SO numbers or time frames.

## SYNTAX

### WithSONumbers
```
Get-InvoiceItem -SONumbers <String[]> [<CommonParameters>]
```

### WithLastDays
```
Get-InvoiceItem -LastDays <Int32> [<CommonParameters>]
```

### WithDate
```
Get-InvoiceItem -StartDate <DateTime> -EndDate <DateTime> [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-InvoiceItem -SONumbers @(5195611, 5195612)
```

### Example 2
```powershell
PS C:\> Get-InvoiceItem -LastDays 10
```

### Example 3
```powershell
PS C:\> Get-InvoiceItem -StartDate (Get-Date).AddDays(-12) -EndDate (Get-Date)
```

## PARAMETERS

### -LastDays
Last number of days to search. 

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

### -SONumbers
Sales order numbers to retrieve.

```yaml
Type: String[]
Parameter Sets: WithSONumbers
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartDate
Date to start time period search.

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

### -EndDate
Date to end time period search.

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
        "id": "661bc901-0594-436c-a778-6782affa6b7c",
        "image_name": "",
        "description": "custom base item",
        "unit_price": "0.83333",
        "standard_quote_unit": 1,
        "final_unit": "EA",
        "created_date": "2021-11-30T11:16:06.056951Z",
        "extended_price": "100.00",
        "total_quantity": "120.0000",
        "vendor_description": "custom base item",
        "so_line_num": 3,
        "system_num": "A223344",
        "purchase_item_id": "f56b3be9-cbaa-465f-b55f-56d640825106",
        "sales_item_id": "19d65b29-23a4-4bef-9ddc-dd5235791e5d",
        "base_item_id": null,
        "base_item_options_id": null,
        "custom_base_item_id": null,
        "header_po_number": "5195611",
        "header_received_po_number": null,
        "header_sales_order_num": "L000151",
        "header_project_id": "39271fa3-19c7-48f1-9a25-0789fe907775",
        "header_job_num": "3656784",
        "header_created_date": "2021-11-30T11:16:05.696281Z",
        "header_submitting_person_id": null,
        "header_discount_percent": 5.0,
        "header_discount_amount": 10.0,
        "header_discount_due_date": "2020-01-10T08:00:00Z",
        "header_invoice_grand_total_price": 223.0,
        "header_invoice_total_price": 200.0,
        "header_invoice_tax": 12.0,
        "header_invoice_freight": 11.0,
        "header_invoice_number": "L000151.006",
        "header_invoice_date": "2020-01-09T08:00:00Z",
        "header_invoice_created_date": "2020-01-08T08:00:00Z",
        "header_buyer_comments": "",
        "header_comments": "hi",
        "header_invoice_export_group": "Approved",
        "header_refund_flag": false,
        "header_overcharge_flag": false,
        "header_extra_quantity_flag": false,
        "header_invoice_closing_flag": false,
        "header_export_processed_by_id": null,
        "header_additional_invoice_item_flag": false,
        "header_export_status": "unprocessed",
        "header_exported_date": null
    },
    {
        "id": "b7bac393-9698-4de8-b8ba-f094625ac83c",
        "image_name": "",
        "description": "emt elbow",
        "unit_price": "1.00000",
        "standard_quote_unit": 1,
        "final_unit": "EA",
        "created_date": "2021-11-30T11:16:05.874305Z",
        "extended_price": "100.00",
        "total_quantity": "100.0000",
        "vendor_description": "emt elbow",
        "so_line_num": 1,
        "system_num": "C785500",
        "purchase_item_id": "9b4104d6-b6ba-4a50-abeb-191ec352d74a",
        "sales_item_id": "c86d7750-5efd-4b08-a906-b2de223328c3",
        "base_item_id": null,
        "base_item_options_id": null,
        "custom_base_item_id": null,
        "header_po_number": "5195611",
        "header_received_po_number": null,
        "header_sales_order_num": "L000151",
        "header_project_id": "39271fa3-19c7-48f1-9a25-0789fe907775",
        "header_job_num": "3656784",
        "header_created_date": "2021-11-30T11:16:05.696281Z",
        "header_submitting_person_id": null,
        "header_discount_percent": 5.0,
        "header_discount_amount": 10.0,
        "header_discount_due_date": "2020-01-10T08:00:00Z",
        "header_invoice_grand_total_price": 223.0,
        "header_invoice_total_price": 200.0,
        "header_invoice_tax": 12.0,
        "header_invoice_freight": 11.0,
        "header_invoice_number": "L000151.006",
        "header_invoice_date": "2020-01-09T08:00:00Z",
        "header_invoice_created_date": "2020-01-08T08:00:00Z",
        "header_buyer_comments": "",
        "header_comments": "hi",
        "header_invoice_export_group": "Waiting tax",
        "header_refund_flag": false,
        "header_overcharge_flag": false,
        "header_extra_quantity_flag": false,
        "header_invoice_closing_flag": false,
        "header_export_processed_by_id": null,
        "header_additional_invoice_item_flag": false,
        "header_export_status": "unprocessed",
        "header_exported_date": null
    }
]
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=174