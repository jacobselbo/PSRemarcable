---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Get-ProjectPOTTD

## SYNOPSIS
Retrieves a list of all active project's grand total to date.

## SYNTAX

```
Get-ProjectPOTTD [[-MainJobNumber] <String>] [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-ProjectPOTTD 
```

### Example 2
```powershell
PS C:\> Get-ProjectPOTTD -MainJobNumber "1297847A"
```

## PARAMETERS

### -MainJobNumber
Select an individual project's grand total to date.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

```json
[
    {
        "id": "99fasd9f9-9999-4089-a7b2-c070f4bdfads2",
        "name": "Project Name",
        "description": "",
        "main_job_num": "7567454",
        "grand_total_to_date": 342.2
    },
    {
        "id": "32131231r-9999-4089-a7b2-c070f4bdfads2",
        "name": "Project Name2",
        "description": "",
        "main_job_num": "123456",
        "grand_total_to_date": 21312.7
    },
    .
    .
    .
]
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=470