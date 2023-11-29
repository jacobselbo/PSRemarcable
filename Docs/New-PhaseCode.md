---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# New-PhaseCode

## SYNOPSIS
Creates a Phase Code Object for Project use.

## SYNTAX

```
New-PhaseCode [-Code] <String> [-Name] <String> [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> New-PhaseCode -Code "128D" -Name "Test"
```

## PARAMETERS

### -Code
Phase code.

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

### -Name
Name of phase code.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### PhaseCode
