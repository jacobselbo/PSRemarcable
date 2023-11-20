---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Get-TransferItem

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

### WithToolModelID
```
Get-TransferItem [-StartDate <DateTime>] [-EndDate <DateTime>] [-ProjectIDList <String[]>]
 [-ToolTransferID <String>] [-ToolItemID <String>] -ToolModelID <String> [-TransferDirection <String>]
 [-SearchTerms <String>] [<CommonParameters>]
```

### WithToolItemID
```
Get-TransferItem [-StartDate <DateTime>] [-EndDate <DateTime>] [-ProjectIDList <String[]>]
 [-ToolTransferID <String>] -ToolItemID <String> [-ToolModelID <String>] [-TransferDirection <String>]
 [-SearchTerms <String>] [<CommonParameters>]
```

### WithToolTransferID
```
Get-TransferItem [-StartDate <DateTime>] [-EndDate <DateTime>] [-ProjectIDList <String[]>]
 -ToolTransferID <String> [-ToolItemID <String>] [-ToolModelID <String>] [-TransferDirection <String>]
 [-SearchTerms <String>] [<CommonParameters>]
```

### WithProjectIdList
```
Get-TransferItem [-StartDate <DateTime>] [-EndDate <DateTime>] -ProjectIDList <String[]>
 [-ToolTransferID <String>] [-ToolItemID <String>] [-ToolModelID <String>] [-TransferDirection <String>]
 [-SearchTerms <String>] [<CommonParameters>]
```

### WithDate
```
Get-TransferItem -StartDate <DateTime> -EndDate <DateTime> [-ProjectIDList <String[]>]
 [-ToolTransferID <String>] [-ToolItemID <String>] [-ToolModelID <String>] [-TransferDirection <String>]
 [-SearchTerms <String>] [<CommonParameters>]
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

### -EndDate
{{ Fill EndDate Description }}

```yaml
Type: DateTime
Parameter Sets: WithToolModelID, WithToolItemID, WithToolTransferID, WithProjectIdList
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: DateTime
Parameter Sets: WithDate
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProjectIDList
{{ Fill ProjectIDList Description }}

```yaml
Type: String[]
Parameter Sets: WithToolModelID, WithToolItemID, WithToolTransferID, WithDate
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String[]
Parameter Sets: WithProjectIdList
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SearchTerms
{{ Fill SearchTerms Description }}

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

### -StartDate
{{ Fill StartDate Description }}

```yaml
Type: DateTime
Parameter Sets: WithToolModelID, WithToolItemID, WithToolTransferID, WithProjectIdList
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: DateTime
Parameter Sets: WithDate
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToolItemID
{{ Fill ToolItemID Description }}

```yaml
Type: String
Parameter Sets: WithToolModelID, WithToolTransferID, WithProjectIdList, WithDate
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: WithToolItemID
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToolModelID
{{ Fill ToolModelID Description }}

```yaml
Type: String
Parameter Sets: WithToolModelID
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: WithToolItemID, WithToolTransferID, WithProjectIdList, WithDate
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToolTransferID
{{ Fill ToolTransferID Description }}

```yaml
Type: String
Parameter Sets: WithToolModelID, WithToolItemID, WithProjectIdList, WithDate
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: WithToolTransferID
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TransferDirection
{{ Fill TransferDirection Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: inboud, outbound

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
