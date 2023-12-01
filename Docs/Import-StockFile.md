---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Import-StockFile

## SYNOPSIS
Create new stock file items or update existing ones.

## SYNTAX

```
Import-StockFile [-CompanyBranchID] <String> [-StockFileItems] <StockFileItem[]> [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> $StockFileItem = New-StockFileItem -SKU "4342s2" -BranchStockQuantity 90 -StockQuantity 546
PS C:\> Import-StockFile -CompanyBranchId 1 -StockFileItmes @($StockFileItem)
```

## PARAMETERS

### -CompanyBranchID
This is a seller company branch Remarcable ID.

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

### -StockFileItems
List of stock file items

```yaml
Type: StockFileItem[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

List of `StockFile` classes

## OUTPUTS

```json
{
    "detail": "'We are processing your file. You will get an email notification once we are fully complete."
}
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=213