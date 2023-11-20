---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# New-Project

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
New-Project [-Status] <String> [-ProjectName] <String> [-MainJobNumber] <String>
 [[-ContractorSystemProjectID] <String>] [[-ProjectManagerEmail] <MailAddress>] [[-TaxRate] <Single>]
 [[-TaxCode] <String>] [[-IsJob] <Boolean>] [[-RequirePhase] <Boolean>] [[-RequireCostCode] <Boolean>]
 [[-RequireToolPhase] <Boolean>] [[-RequireToolCostCode] <Boolean>]
 [[-UseLaborPhaseAsMaterialPhasePrefix] <Boolean>] [[-DefaultMaterialPhasePrefix] <String>]
 [[-CustomVariable1] <String>] [[-CustomVariable2] <String>] [[-Description] <String>]
 [[-MaterialPhaseCode] <PhaseCode[]>] [[-LaborPhaseCode] <PhaseCode[]>] [[-Address] <Address>]
 [[-ClientCompanyCode] <String>] [[-ProjectOwnerEmailList] <MailAddress[]>] [[-CompanyBranchID] <Int32>]
 [[-IsGroup] <Boolean>] [[-ParentMainJobNumber] <String>] [[-LumpSumExport] <Boolean>]
 [[-RequireWBSCode1] <Boolean>] [[-ToolCostPONumber] <String>] [[-CurrentJobPONumber] <Int32>]
 [[-TaxExempt] <Boolean>] [[-AllowDirectPurchase] <Boolean>] [<CommonParameters>]
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

### -Address
{{ Fill Address Description }}

```yaml
Type: Address
Parameter Sets: (All)
Aliases:

Required: False
Position: 19
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowDirectPurchase
{{ Fill AllowDirectPurchase Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 30
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientCompanyCode
{{ Fill ClientCompanyCode Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 20
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CompanyBranchID
{{ Fill CompanyBranchID Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 22
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContractorSystemProjectID
{{ Fill ContractorSystemProjectID Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CurrentJobPONumber
{{ Fill CurrentJobPONumber Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 28
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CustomVariable1
{{ Fill CustomVariable1 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CustomVariable2
{{ Fill CustomVariable2 Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultMaterialPhasePrefix
{{ Fill DefaultMaterialPhasePrefix Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
{{ Fill Description Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsGroup
{{ Fill IsGroup Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 23
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsJob
{{ Fill IsJob Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LaborPhaseCode
{{ Fill LaborPhaseCode Description }}

```yaml
Type: PhaseCode[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 18
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LumpSumExport
{{ Fill LumpSumExport Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 25
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MainJobNumber
{{ Fill MainJobNumber Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaterialPhaseCode
{{ Fill MaterialPhaseCode Description }}

```yaml
Type: PhaseCode[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParentMainJobNumber
{{ Fill ParentMainJobNumber Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 24
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProjectManagerEmail
{{ Fill ProjectManagerEmail Description }}

```yaml
Type: MailAddress
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProjectName
{{ Fill ProjectName Description }}

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

### -ProjectOwnerEmailList
{{ Fill ProjectOwnerEmailList Description }}

```yaml
Type: MailAddress[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 21
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequireCostCode
{{ Fill RequireCostCode Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequirePhase
{{ Fill RequirePhase Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequireToolCostCode
{{ Fill RequireToolCostCode Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequireToolPhase
{{ Fill RequireToolPhase Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequireWBSCode1
{{ Fill RequireWBSCode1 Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 26
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status
{{ Fill Status Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: active, archived

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TaxCode
{{ Fill TaxCode Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TaxExempt
{{ Fill TaxExempt Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 29
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TaxRate
{{ Fill TaxRate Description }}

```yaml
Type: Single
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToolCostPONumber
{{ Fill ToolCostPONumber Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 27
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseLaborPhaseAsMaterialPhasePrefix
{{ Fill UseLaborPhaseAsMaterialPhasePrefix Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
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
