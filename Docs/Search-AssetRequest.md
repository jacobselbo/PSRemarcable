---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Search-AssetRequest

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Search-AssetRequest [[-Last] <Int32>] [[-ProjectID] <String>] [[-JobNumber] <String>]
 [[-OwnerEmail] <MailAddress>] [[-FromWarehouseID] <String>] [[-WarehouseID] <String>]
 [[-RequestType] <String>] [[-RequestStatus] <String[]>] [<CommonParameters>]
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

### -FromWarehouseID
{{ Fill FromWarehouseID Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -JobNumber
{{ Fill JobNumber Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Last
{{ Fill Last Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OwnerEmail
{{ Fill OwnerEmail Description }}

```yaml
Type: MailAddress
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProjectID
{{ Fill ProjectID Description }}

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

### -RequestStatus
{{ Fill RequestStatus Description }}

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:
Accepted values: new, acked, partly shipped, picked, partly received, complete, canceled

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestType
{{ Fill RequestType Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: project, warehouse, owner, return

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WarehouseID
{{ Fill WarehouseID Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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
