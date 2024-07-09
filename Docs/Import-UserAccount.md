---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Import-UserAccount

## SYNOPSIS
Creates a new user or updates an existing user.

## SYNTAX

```
Import-UserAccount [-UserAccount] <UserAccount> [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> $UserAccount = New-UserAccount -FirstName "Test" -LastName "Test" -Email "test@gmail.com"
PS C:\> Import-UserAccount $UserAccount
```

### Example 2
```powershell
PS C:\> $UserAccount = [UserAccount]::new(@{first_name="Test";last_name="Test";email="test@gmail.com"})
PS C:\> Import-UserAccount $UserAccount
```

Example 2 is used when importing data already retrieved from Remarcable API service. This is preferable if data is simply being transformed, not made new.

## PARAMETERS

### -AccountUser
Account User to import.

```yaml
Type: AccountUser
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

`UserAccount` class

## OUTPUTS

```json
{
    "id": 100123,
    "first_name": "Joe",
    "last_name": "Smith",
    "email": "joe.smith@yourdomain.com",
    "phone": "440-120-4309",
    "employee_id": "JSS",
    "company_branch_name": "Cleveland",
    "user_group_name": "All Access",
}
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=1301