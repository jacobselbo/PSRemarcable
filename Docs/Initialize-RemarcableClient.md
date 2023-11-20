---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Initialize-RemarcableClient

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### WithAPIToken (Default)
```
Initialize-RemarcableClient -APIToken <SecureString> [-URI <String>] [<CommonParameters>]
```

### WithAccountCreation
```
Initialize-RemarcableClient -Email <MailAddress> -Password <SecureString> [-URI <String>] [<CommonParameters>]
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

### -APIToken
{{ Fill APIToken Description }}

```yaml
Type: SecureString
Parameter Sets: WithAPIToken
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Email
{{ Fill Email Description }}

```yaml
Type: MailAddress
Parameter Sets: WithAccountCreation
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Password
{{ Fill Password Description }}

```yaml
Type: SecureString
Parameter Sets: WithAccountCreation
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -URI
{{ Fill URI Description }}

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
