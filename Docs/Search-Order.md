---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Search-Order

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### WithLastDays
```
Search-Order [-ProjectID <String>] [-JobNumber <String>] -LastDays <Int32> [<CommonParameters>]
```

### WithDate
```
Search-Order [-ProjectID <String>] [-JobNumber <String>] -StartDate <DateTime> -EndDate <DateTime>
 [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -EndDate
{{ Fill EndDate Description }}

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

### -JobNumber
{{ Fill JobNumber Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LastDays
{{ Fill LastDays Description }}

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

### -ProjectID
{{ Fill ProjectID Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartDate
{{ Fill StartDate Description }}

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

### System.Object
## NOTES

## RELATED LINKS