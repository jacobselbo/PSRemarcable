---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Initialize-RemarcableClient

## SYNOPSIS
Creates a Remarcable client to be used by all API functions.

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
Uses either the email and password of a user account or a generated API token to create a Remarcable client.

## EXAMPLES

### Example 1
```powershell
PS C:\> Initialize-RemarcableClient -APIToken ("LGwLuzeFyYDkJ3XcE-yjpKb1ewUYH9TjQe1nLWMLbOfwG4sv6zyv9oE!V0KyBlS" | ConvertTo-SecureString -AsPlainText)
```

### Example 2
```powershell
PS C:\> Initialize-RemarcableClient -Email test@gmail.com -Password ("Password" | ConvertTo-SecureString -AsPlainText)
```

Converting to a secure string as late as possible insures that generated powershell logs don't carry plaintext passwords or APITokens.

## PARAMETERS

### -APIToken
API token for Remarcable Client

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
Email of user account to create API token

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
Password of user account to create API token

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
Custom Remarcable URI

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: "https://www.remarcable.com"
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### None

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=74