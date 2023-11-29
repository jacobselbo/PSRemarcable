---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Get-TransferItem

## SYNOPSIS
Retrieves a list of transfered items.

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

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TransferItem -ToolTransferID "c1efa05d-094d-4f5b-8bad-997a190f2cbb"
```

### Example 2
```powershell
PS C:\> Get-TransferItem -ProjectIDList @("ec2591d7-ee3a-409a-b59b-3a97d7727204","7d3809c9-99e9-4286-a67e-40abee50b795")
```

### Example 3
```powershell
PS C:\> Get-TransferItem -StartDate (Get-Date).AddDays(-100) -EndDate (Get-Date)
```

### Example 4
```powershell
PS C:\> Get-TransferItem -ToolModelID "d682a016-8994-415b-85eb-94a0a4d820c6"
```

### Example 5
```powershell
PS C:\> Get-TransferItem -ToolItemID "d9b2f3c2-ae02-4d1d-adbd-0198220cf331"
```

## PARAMETERS

### -StartDate
Date when to start listing transfer items.

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

### -EndDate
Date when to end listing transfer items.

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
List of projects to include in transfer item report.

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
Search terms to look for in transfers to include in response.

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

### -ToolItemID
ID of item to include in transfer report.

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
ID of model to include in transfer report.

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
ID of transfer report to include in response.

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
Direction of transfer to inclue in transfer report.
Either inbound or outbound transfers.

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

```json
[
    {
        "id": "212ff889-2c67-4c8b-af0e-ebd48d820e53",
        "description": "Grounding die set",
        "transfer_time": "2021-12-27T05:09:18.814142Z",
        "transfer_expiry_time": "2021-12-27T12:00:54.266738Z",
        "transfer_direction": "inbound",
        "initiator": "Purchaser Name",
        "asset_request_num": null,
        "from_string": "12",
        "to_owner_name": null,
        "to_project_name": null,
        "to_job_num": "",
        "to_warehouse": "MRO",
        "quantity": 1,
        "received_quantity": null,
        "asset_barcode_num": "51651",
        "status": "ok",
        "cost_amount_to_date": null,
        "bill_amount_to_date": null,
        "last_billed": null,
        "phase_code": "",
        "cost_code": "",
        "is_missing": false,
        "is_damaged_beyond_repair": false,
        "is_quantity_tracking": false,
        "is_charge_enabled": true,
        "aggregated_config_code": "",
        "model_msrp": 0.5,
        "lost_tool_cost": 349.07,
        "cumulative_rental_cost": -348.57
    },
    {
        "id": "e368c8d4-c3b1-433a-8736-bec408531c82",
        "description": "Air compressor (123)",
        "transfer_time": "2021-12-27T05:09:18.814142Z",
        "transfer_expiry_time": "2021-12-27T09:59:41.165400Z",
        "transfer_direction": "inbound",
        "initiator": "Purchaser Name",
        "asset_request_num": null,
        "from_string": "ABC",
        "to_owner_name": null,
        "to_project_name": null,
        "to_job_num": "",
        "to_warehouse": "MRO",
        "quantity": 1,
        "received_quantity": null,
        "asset_barcode_num": "1390",
        "status": "ok",
        "cost_amount_to_date": null,
        "bill_amount_to_date": null,
        "last_billed": null,
        "phase_code": "",
        "cost_code": "",
        "is_missing": false,
        "is_damaged_beyond_repair": false,
        "is_quantity_tracking": false,
        "is_charge_enabled": true,
        "aggregated_config_code": "",
        "model_msrp": 200.0,
        "lost_tool_cost": 174.37,
        "cumulative_rental_cost": 25.63
    },
    .
    .
    .
]
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=1238