---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# New-Project

## SYNOPSIS
Creates a project Object to imported or updated.

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
 [[-TaxExempt] <Boolean>] [[-AllowDirectPurchase] <Boolean>]
 [[-WBSCode1Options] <WBSCode[]>] [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> $Project = New-Project -ProjectName "Test" -Status "active" -MainJobNumber "123832A"
```

## PARAMETERS

### -Address
You can use this field to pass the project address / location.

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
When true, field user to send order directly to suppliers.

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
This field stores your system company code that the project belongs to.

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
This field allows you to set your company branch ID at the time of creation. You can find all your branch IDs at the admin page.

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
This is your system's unique job/project ID. Remarcable uses this field to determine if you are updating an existing job or creating a new project.

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
This field stores current highest used PO number for this project.

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
This field is user defined and can be found at the bottom of the project settings screen.

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
This field is user defined and can be found at the bottom of the project settings screen.

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
Each item purchased under any given project can be assigned a phase/cost code. When this field is used, a prefix will be added in front of the assigned phase/cost code.

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
This is a project description can be used to add supplemental information on the project as well as aid searching.

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
Indicate if a project is used as a group. When true, that means this project is a group. Default value is false.

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
Some accounting system differentiate project into job vs work order. If you are creating for a job, send this field as true.

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
This field stores a list of available labor phase code. Each phase code has sub field of "name" and "code".  If this field is not passed and a parent project exists, parent value will be copied over.

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
Indicate the type of order and invoice export. When true, all line item details are grouped into one line.

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
This is the main job number of the project. When contractor_sys_project_id is not present in Remarcable system, Remarcable will use this field to determine whether to create or update a project.

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
This field stores a list of available material phase code. Each phase code has sub field of "name" and "code". If this field is not passed and a parent project exists, parent value will be copied over.

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
If this project belongs to a group, this field should contain the parent group's main job number. This field cannot be used with is_group at the same time. Note: Parent project must be created from a prior API call. You can not create the parent and child on the same API call.

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
This is the project manager's email address. This email address will be used to automatically add the associated account user as the owner of the project.

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
This is the name of the project. Max length 200 characters.

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
This field allows you to send an array of email addresses to be added to the project as owners. When you perform an update, the system will auto add new owners, however it will not remove existing owners automatically. You don't have to include the project_manager_email here again. However, if you did, the system will just ignore it and will not add the same person twice. If this field is not passed and a parent project exists, parent value will be copied over.

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
When set to true, this field requires a foreman to fill the material phase code before an order can be submitted.

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
When set to true, this field requires a foreman to fill the labor phase code before an order can be submitted.

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
When set to true, this field requires a foreman to fill the material phase code before a tool request can be submitted.

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
When set to true, this field requires a foreman to fill the labor phase code before a tool request can be submitted.

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
When set to true, this field requires a foreman to fill the wbs code 1 before an order can be submitted.

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
This is represents the status of a project. Available options are "active" or "archived".

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
This is the main tax code used for this project.

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
Indicate if this job is tax exempt.

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
This field stores the typical tax rate. In some cases, that means use tax. If this job is tax exempt, you can send 0.

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
This field stores tool cost PO number for this project.

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
When set to true, this field would allow part of the labor phase code to be combined with material phase code to create a joint phase code. If you don't know what this is, please set it to false.

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

### -WBSCode1Options
WBS Codes.

```yaml
Type: WBSCode[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 31
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### Project