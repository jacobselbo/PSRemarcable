---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Get-PriceFileItemPrice

## SYNOPSIS
Retrieves a price file items prices from Remarcable.

## SYNTAX

```
Get-PriceFileItemPrice [[-PriceFileID] <String>] [[-AllowSubstitute] <Boolean>] [[-UPCList] <String[]>]
 [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-PriceFileItemPrice
```

### Example 2
```powershell
PS C:\> Get-PriceFileItemPrice -PriceFileID "1ac299d4-56f9-4faf-ab7e-a3af3ec704d1" -UPCList @("98001002007", "98003001107") -AllowSubstitute $true
```


## PARAMETERS

### -PriceFileID
Remarcable Price File ID

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

### -UPCList
List of UPC numbers to retrieve

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowSubstitute
If no PriceFileID is provided regardless of the AllowSubstitute value, the returned result will be the average of all direct UPC matches in all of the price files company wide.

If PriceFileID is provided and AllowSubstitute is `true`, the system will return the prices for all direct UPC matches within the specified price file. In case there is no direct UPC match, it will return the average of all cross-referenced price file items within the specified price file.

If PriceFileID is provided and AllowSubstitute is `false`, the system will return the prices only for all direct UPC matches within the specified price file.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
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
    "98001002007":
    {
        "price": 200.0,
        "UOM": 100,
    },
    .
    .
    .
}
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=70