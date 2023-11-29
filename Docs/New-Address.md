---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# New-Address

## SYNOPSIS
Creates an Address object for Project use.

## SYNTAX

```
New-Address [-Field1] <String> [[-Field2] <String>] [-City] <String> [-State] <String> [-Country] <String>
 [-ZIP] <String> [[-ShippingNote] <String>] [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> New-Address -Field1 "123 Main St." -City "Noblesville" -State "IN" -ZIP "46062" -Country "USA"
```

## PARAMETERS

### -City
City name.

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

### -Country
Country of Address. Avaiable options are "USA", "Canada".

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: USA, Canada

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Field1
Street Number and Address.

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

### -Field2
Apartment or Suite #.

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

### -ShippingNote
Delivery Location. Such as: Electric Trailer.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -State
State Abbreviation. i.e. "NY", "CA", "OH", "IN".

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

### -ZIP
5 digit USPS Postal ZIP code.

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

### Address
