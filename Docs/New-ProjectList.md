---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# New-ProjectList

## SYNOPSIS
Creates a new project list object.

## SYNTAX

```
New-ProjectList [-ListName] <String> [[-ParentListName] <String>] [-ListType] <String>
 [-ProjectListItems] <ProjectListItem[]> [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> $ProjectListItem = New-ProjectListItem -Description "Item"
PS C:\> $ProjectList = New-ProjectList -ListName "List" -ProjectListItems $ProjectListItem
```

## PARAMETERS

### -ListName
The name of your list. This name will be used as a unique key for the list. In other words, if you send multiple lists with the same name, Remarcable will either aggregate all items or only accept the last list (depending on setting).

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

### -ListType
Valid values are "default", "scheduling". If scheduling is used, the system will not search the list under main search library.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: default, scheduling

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParentListName
If you wish to create a sub-list with a parent, you can pass in a parent list name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProjectListItems
You can pass a list of project list you want to create, append, or overwrite.

```yaml
Type: ProjectListItem[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### ProjectList
