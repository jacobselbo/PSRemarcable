---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Search-Order

## SYNOPSIS
Retrieve a list of PO items.

## SYNTAX

### WithLastDays
```
Search-Order [-ProjectID <String>] [-JobNumber <String>] -LastDays <Int32> [<CommonParameters>]
```

### WithDate
```
Search-Order [-ProjectID <String>] [-JobNumber <String>] -StartDate <DateTime> -EndDate <DateTime>
 [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Search-Order -Last 20
```

### Example 2
```powershell
PS C:\> Search-Order -ProjectID "a93ee076-0d16-49be-b4ec-49c74b3fe335"
```

## PARAMETERS

### -StartDate
Date when to start searching for POs that have been updated.

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
Date when to end searching for POs that have been updated.

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

### -JobNumber
Job Number to retrieve POs for.

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

### -LastDays
Integear amount that represent the last n days.

```yaml
Type: Int32
Parameter Sets: WithLastDays
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProjectID
ID of project to retrieve POs for.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

```json
[
    {
        "id": "9564b285-2fb7-469b-ba82-6cbba0cd842e",
        "status": "shipped complete",
        "po_type": "Basic",
        "created_from_get_po": false,
        "po_number": "65165152",
        "updated_on": "2019-05-21T21:13:52.672844Z",
        "phase_code": "999",
        "wbs_code_1": "22",
        "job_num": "q23462456",
        "submitted_on": "2019-05-20T21:14:02.451203Z",
        "requested_delivery_date": "20211027",
        "supplying_company_name": "Graybar",
        "order_name": "Pipe",
        "project_id": "a93ee076-0d16-49be-b4ec-49c74b3fe335"
        "received_datetime": "2019-05-21T21:13:52.672844Z",
        "requester_name": "Jon Doe",
        "requester_work_phone": "",
        "created_by_supplier_flag": false,
        "requester_id": 1901
    },
    {
        "id": "3f070a55-7bb4-4942-825d-1d0c54e8fff1",
        "status": "pending",
        "po_type": "Basic",
        "created_from_get_po": true,
        "po_number": null,
        "updated_on": "2023-09-01T20:51:21.222309Z",
        "phase_code": "",
        "wbs_code_1": "",
        "job_num": "365678-4A",
        "submitted_on": null,
        "requested_delivery_date": null,
        "supplying_company_name": "",
        "order_name": "",
        "project_id": "39271fa3-19c7-48f1-9a25-0789fe907771",
        "received_datetime": null,
        "requester_name": "Jane Doe",
        "requester_work_phone": "",
        "created_by_supplier_flag": false,
        "requester_id": 1902
    },
    .
    .
    .
]
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=64