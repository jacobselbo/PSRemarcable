---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Get-PriceFile

## SYNOPSIS
Gets a list of price file items from a price file ID.

## SYNTAX

```
Get-PriceFile [-PriceFileID] <String> [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-PriceFile -PriceFileID "895f72bf7d0e4dcaa5dc27a35b25625c27145787"
```

## PARAMETERS

### -PriceFileID
ID of Price File.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
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
[
    {
        "id": "748566ca-2819-458b-b5f6-3d8eac7f663f", 
        "created_date": "2022-04-13T17:32:04.288195Z", 
        "updated_on": "2022-04-13T17:32:04.288188Z", 
        "percent_changed": None, 
        "stock_num": "20-AB-01", 
        "price_file': "e2idksc4-be52-4d16-8d69-27896b5bf281", 
        "manufacturer_name": "", 
        "image_name": "", 
        "standard_quote_unit': 1, 
        "unit_price": "42.00000", 
        "price_conversion_ratio": "1.0000", 
        "system_num": "20-AB-01", 
        "description": "Z-Bracket", 
        "previous_price": None, 
        "upc_11d": "25000045481"
    }
    .
    .
    .
]
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=229