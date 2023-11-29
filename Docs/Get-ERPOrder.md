---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Get-ERPOrder

## SYNOPSIS
Gets account system order information based off a PO number.

## SYNTAX

```
Get-ERPOrder [[-PONumber] <String>] [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-ERPOrder -PONumber 65165152
```

## PARAMETERS

### -PONumber
PO Number to request information about.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
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
    "id": "9564b285-2fb7-469b-ba82-6cbba0cd842e",
    "company_code": "1",
    "po_number": "65165152",
    "job_num": "q23462456",
    "po_status": "active",
    "tax_amount": 1.46,
    "total_amount": 106.40,
    "order_items": [
        {
            "line_number": 1,
            "item_code": "12EMT",
            "description": "1/2\" EMT Insulating Bushing",
            "quantity": 200,
            "received_quantity": 50,
            "unit_price": 20.00,
            "extended_price": 300.00,
            "phase_code": "0704100",
            "gl_code": "1605000",
        },
        {
            "line_number": 2,
            "item_code": "34EMT",
            "description": "3/4\" EMT Insulating Bushing",
            "quantity": 100,
            "received_quantity": 100,
            "unit_price": 50.00000,
            "extended_price": 50.00,
            "phase_code": "0704100",
            "gl_code": "1605000",
        }
    ]
}
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=73