---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Import-ProjectList

## SYNOPSIS
Creates a project list and adds items to list on Remarcable

## SYNTAX

```
Import-ProjectList [[-ProjectID] <String>] [-JobNumber] <String> [[-ProjectLists] <ProjectList[]>]
 [-OverwriteExisting] [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> $ProjectListItem = New-ProjectListItem -Description "Item"
PS C:\> $ProjectList = New-ProjectList -ListName "List" -ProjectListItems $ProjectListItem
PS C:\> Import-ProjectList -JobNumber "128382" -ProjectLists $ProjectList
```

## PARAMETERS

### -JobNumber
Job number of project to import project list.

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

### -OverwriteExisting
When true, the new list will overwrite the existing list. Otherwise, the system will append the items to existing list.

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

### -ProjectID
Remarcable project number. If provided, this will be the primary field used to create project.

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

### -ProjectLists
List of project lists to add.

```yaml
Type: ProjectList[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

List of `ProjectList` classes

## OUTPUTS

```json
{
    "detail": "Items imported"
}
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=321