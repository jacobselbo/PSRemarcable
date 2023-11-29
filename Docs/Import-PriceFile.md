---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Import-PriceFile

## SYNOPSIS
Create new price file items or update existing ones.

## SYNTAX

```
Import-PriceFile [-PriceFileID] <String> [-BuyerCompanyID] <String> [-PriceFileItems] <PriceFileItem[]>
 [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> $PriceFileItem = New-PriceFileItem -StockNumber "S128382" -Description "Test" -SKU "128382" -UPC "123828" -Price 123.1 -UnitOfMeasurement "100"
PS C:\> Import-PriceFile -PriceFileID "af231820-1014-49bf-a842-824c2200cddf" -BuyerCompanyID "10168"
```

## PARAMETERS

### -BuyerCompanyID
Buying company Remarcable ID. Seller company can obtain this ID from the price file update email on price file page.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PriceFileID
Remarcable Price File ID. Buying company can obtain this ID by calling the List Price File API. Seller company can obtain this ID from the price file update email on price file page

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

### -PriceFileItems
List of PriceFileItem Objects. Use `New-PriceFileItem`

```yaml
Type: PriceFileItem[]
Parameter Sets: (All)
Aliases:

Required: True
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
    "detail": "'We are processing your file. You will get an email notification once we are fully complete."
}
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=212