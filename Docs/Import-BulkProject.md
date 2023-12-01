---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Import-BulkProject

## SYNOPSIS
Bulk import new or updated projects.

## SYNTAX

```
Import-BulkProject [-Projects] <Project[]> [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> $Project1 = New-Project -ProjectName "Test" -Status "active" -MainJobNumber "123832A"
PS C:\> $Project2 = New-Project -ProjectName "Test2" -Status "active" -MainJobNumber "547732D"
PS C:\> Import-BulkProject @($Project1, $Project2)
```

### Example 2
```powershell
PS C:\> $Project1 = [Project]::new(@{project_name="Test";status="active";main_job_num="123832A"})
PS C:\> $Project2 = [Project]::new(@{project_name="Test2";status="active";main_job_num="547732D"})
PS C:\> Import-BulkProject @($Project1, $Project2)
```

Example 2 is used when importing data already retrieved from Remarcable API service. This is preferable if data is simply being transformed, not made new.

## PARAMETERS

### -Projects
List of projects to import

```yaml
Type: Project[]
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

List of the `Project` classes

## OUTPUTS

```json
{
    "detail": "We are processing your bulk import project request. If error occurs, you will get an email notification."
}
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=103