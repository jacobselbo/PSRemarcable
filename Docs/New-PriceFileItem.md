---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# New-PriceFileItem

## SYNOPSIS
Creates a Price File Object to be imported or updated.

## SYNTAX

```
New-PriceFileItem [-StockNumber] <String> [-Description] <String> [-SKU] <String> [-UPC] <String>
 [-Price] <Single> [-UnitOfMeasurement] <String> [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> New-PriceFileItem -StockNumber "100" -Description "Test" -SKU "s42s3" -UPC "2039A" -Price 100.10 -UnitOfMeasurement "10"
```

## PARAMETERS

### -Description
Price file item description

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

### -Price
Price of given UPC

```yaml
Type: Single
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SKU
Seller company Item ID

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StockNumber
Manufacturer stock number of price file item

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

### -UPC
11-digit UPC number of a price file item

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnitOfMeasurement
Typical values are 1, 100, 1000, E, M, C. For example, conduit is typically sold per 100ft. If the the average price is $200/100ft. The price will be 200 and UOM will be 100

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### PriceFileItem
