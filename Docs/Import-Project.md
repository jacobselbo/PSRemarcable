---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Import-Project

## SYNOPSIS
Creates a new project or updates an existing project.

## SYNTAX

```
Import-Project [-Project] <Project> [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> $Project = New-Project -ProjectName "Test" -Status "active" -MainJobNumber "123832A"
PS C:\> Import-Project $Project
```

### Example 2
```powershell
PS C:\> $Project = [Project]::new(@{project_name="Test";status="active";main_job_num="123832A"})
PS C:\> Import-Project $Project
```

Example 2 is used when importing data already retrieved from Remarcable API service. This is preferable if data is simply being transformed, not made new.

## PARAMETERS

### -Project
Project to import.

```yaml
Type: Project
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

Project from `New-Project`

## OUTPUTS

```json
{
    "detail": "success",
    "remarcable_project_id": "facbef31-50ba-4599-99f8-765cf631191a"
}
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=68