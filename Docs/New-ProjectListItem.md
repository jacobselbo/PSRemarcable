---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# New-ProjectListItem

## SYNOPSIS
Creates a Project List Item.

## SYNTAX

```
New-ProjectListItem [-Description] <String> [[-Comments] <String>] [[-RemarcableSKU] <String>]
 [[-UPCGeneric] <Int32>] [[-ManufacturerName] <String>] [[-ManufacturerStockNumber] <String>]
 [[-Quantity] <Int32>] [[-TotalQuantity] <Int32>] [[-ReleasedQuantity] <Int32>] [[-UnitPrice] <Single>]
 [[-Unit] <String>] [[-UnitOfMeasurement] <Int32>] [[-PhaseCode] <String>] [[-CostCode] <String>]
 [[-WBSCode1] <String>] [[-SpoolNumber] <Int32>] [[-SpoolTag] <String>] [[-LayerNumber] <Int32>]
 [[-LayerTag] <String>] [[-WireNumber] <Int32>] [[-WireTag] <String>] [-IsSubstituteAllowed]
 [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> $ProjectListItem = New-ProjectListItem -Description "Item"
```

## PARAMETERS

### -Comments
Item Comments.

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

### -CostCode
Item cost code.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Item Description.

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

### -IsSubstituteAllowed
Item attribute to allow substitution.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LayerNumber
Only used for wire spool.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LayerTag
Only used for wire spool.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 18
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ManufacturerName
This string has to match exact manufacturer name on Remarcable. Otherwise, manufacturer will be added as a comment.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ManufacturerStockNumber
This is the manufacturer stock number value.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PhaseCode
Item phase code.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Quantity
Item quantity. This is the quantity pre-filled for direct purchase.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReleasedQuantity
This is the quantity already purchased or released.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemarcableSKU
Remarcable item code. Needed to pull Remarcable image and item description.

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

### -SpoolNumber
Only used for wire spool.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SpoolTag
Only used for wire spool.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TotalQuantity
This is the item overall quantity.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UPCGeneric
Used to pull Remarcable image and description in absence of Remarcable SKU.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Unit
EA / FT.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnitOfMeasurement
1, 100, 1000.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnitPrice
Item unit price per each.

```yaml
Type: Single
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WBSCode1
Item wbs code.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WireNumber
Only used for wire spool.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 19
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WireTag
Only used for wire spool.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 20
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### ProjectListItem
