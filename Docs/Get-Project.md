---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Get-Project

## SYNOPSIS
Gets a project from a project ID.

## SYNTAX

```
Get-Project [-ProjectID] <String> [-AsClass] [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-Project -ProjectID "9564b285-2fb7-469b-ba82-6cbba0cd842e"
```

### Example 2
```powershell
PS C:\> Get-Project -ProjectID "9564b285-2fb7-469b-ba82-6cbba0cd842e" -AsClass
```

## PARAMETERS

### -ProjectID
ID of Remarcable Project. Can be obtained by using `Search-Project`.

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

### -AsClass
Returns the data as a project class. Desirable if only editing a single project and going to be imported later.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

```json
{
    "current_status": "active",
    "name": "Datacenter, Cleveland OH",
    "description": "phase 1",
    "created_date": "2020-02-04T15:54:20.054450Z",
    "updated_on": "2020-07-09T04:20:24.239668Z",
    "main_job_num": "1234564",
    "tax_rate": 6.25, 
    "tax_code": "150C",
    "is_job": true,
    "custom_var_1": "16",
    "custom_var_2": "169T",
    "require_phase": false,
    "require_cost_code": false,
    "require_wbs_code_1": false,
    "default_material_phase_prefix": "07",
    "use_labor_phase_as_material_phase_prefix": false,
    "material_phase_code": [
        {
            "code": "1100",
            "name": "conduit"
        },
        {
            "code": "1200",
            "name": "box"
        },
        .
        .
        .
    ]
    "labor_phase_code": [
        {
            "code": "100",
            "name": "In-wall"
        },
        {
            "code": "200",
            "name": "Underground"
        },
        .
        .
        .
    ],
    "wbs_code_1_options": [
        {
            "code": "1001",
            "name": "wbs code A"
        },
        {
            "code": "2001",
            "name": "wbs code B"
        },
        .
        .
        .
    ],
    "address": {
        "note": "",
        "Field_1": "1234 1st Ave"
        "Field_2": ""
        "city": "Cleveland"
        "state": "OH"
        "zip": "12345"
        "country": "USA"
    }
}
```

### OR if -AsClass
Returns a project class that can be edited then re-used by `Import-Project`.
However, a better approach if multiple projects need to be edited is to keep them in the raw form, then create a new project by `[Project]::new($data)` and procced to use `Import-BulkProject`.

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=67