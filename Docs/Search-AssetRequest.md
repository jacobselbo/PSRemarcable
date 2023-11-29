---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Search-AssetRequest

## SYNOPSIS
Gets a list of asset requests based of paramters.

## SYNTAX

```
Search-AssetRequest [[-Last] <Int32>] [[-ProjectID] <String>] [[-JobNumber] <String>]
 [[-OwnerEmail] <MailAddress>] [[-FromWarehouseID] <String>] [[-WarehouseID] <String>]
 [[-RequestType] <String>] [[-RequestStatus] <String[]>] [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Search-AssetRequest
```

### Example 2
```powershell
PS C:\> Search-AssetRequest -Last 30
```

### Example 3
```powershell
PS C:\> Search-AssetRequest -JobNumber "12832" -OwnerEmail "test@gmail.com"
```

## PARAMETERS

### -FromWarehouseID
Warehouse ID where item is request from or returned assets come from.

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
Project job number to get asset requets from.

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
Integer representing last n days. Default is 90 days if not provided.

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
Email of transfer owner.

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
Project ID to get asset requests from.

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
List of "new", "acked", "partly shipped", "picked", "partly recieved", "complete", "canceled". If not provided returns all statuses.

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
"project", "warehouse", "owner", "return". If not provided returns all requests.

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
ID of warehouse where asset request is going to.

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

```json
[
    {
        "id": "319f080c-b3f0-4534-829b-95e4743855e2",
        "status": "submitted",
        "type": "project",
        "foremen_approved": true,
        "warehouse": {
            "id": "3493d14c-7df9-49f7-8f8e-32407ed8a445",
            "name": "MRO",
            "is_billed": false,
            "require_receive_inspection": true
        },
        "request_num": 1261,
        "requester": {
            "email": "danil.khomenko@remarcable.com",
            "first_name": "Danil",
            "last_name": "Khomenko",
            "company": 10168,
            "work_phone": "",
            "id": 241
        },
        "project": {
            "id": "39271fa3-19c7-48f1-9a25-0789fe907775",
            "name": "ABC",
            "description": "some thing",
            "tax_rate": "7.00",
            "main_job_num": "3656784",
            "tax_exempt": true,
            "tax_certificate_link": "tax_certificate/Lighthouse_Electric/2021/39271fa3-19c7-48f1-9a25-0789fe907775.pdf",
            "is_job": true,
            "client_company_code": "2",
            "is_group": false,
            "parent": null
        },
        "from_warehouse": null,
        "owner": null,
        "delivery_address": {
            "Field_2": "32",
            "country": "Canada",
            "id": "31faf98b-3b60-41dc-984b-1b9e5b2f4eb5",
            "state": "ON",
            "Field_1": "5400 Dixie Road",
            "note": "test_tool_req",
            "ship_to_id": "3656784",
            "city": "Mississauga",
            "zip": "L4W 4T4"
        },
        "delivery_date": "2022-06-06T13:28:53.758000Z",
        "messages": null,
        "shipping_status": null,
        "submitted_on": "2022-06-03T13:28:55.635155Z",
        "processed_by": null,
        "created_date": "2022-06-03T13:28:55.625795Z",
        "owner_company": 10168,
        "other_attributes": null,
        "job_wo_number": "3656784",
        "expected_delivery_date": null,
        "phase_code": "",
        "cost_code": ""
    },
    {
        "id": "1bd223bc-ed22-4d24-98ba-2590c866be50",
        "status": "submitted",
        "type": "project",
        "foremen_approved": true,
        "warehouse": {
            "id": "3493d14c-7df9-49f7-8f8e-32407ed8a445",
            "name": "MRO",
            "is_billed": false,
            "require_receive_inspection": true
        },
        "request_num": 1260,
        "requester": {
            "email": "danil.khomenko@remarcable.com",
            "first_name": "Danil",
            "last_name": "Khomenko",
            "company": 10168,
            "work_phone": "",
            "id": 241
        },
        "project": {
            "id": "39271fa3-19c7-48f1-9a25-0789fe907775",
            "name": "ABC",
            "description": "some thing",
            "tax_rate": "7.00",
            "main_job_num": "3656784",
            "tax_exempt": true,
            "tax_certificate_link": "tax_certificate/Lighthouse_Electric/2021/39271fa3-19c7-48f1-9a25-0789fe907775.pdf",
            "is_job": true,
            "client_company_code": "2",
            "is_group": false,
            "parent": null
        },
        "from_warehouse": null,
        "owner": null,
        "delivery_address": {
            "Field_2": "32",
            "country": "Canada",
            "id": "31faf98b-3b60-41dc-984b-1b9e5b2f4eb5",
            "state": "ON",
            "Field_1": "5400 Dixie Road",
            "note": "test_tool_req",
            "ship_to_id": "3656784",
            "city": "Mississauga",
            "zip": "L4W 4T4"
        },
        "delivery_date": "2022-06-03T07:58:10.889000Z",
        "messages": null,
        "shipping_status": null,
        "submitted_on": "2022-06-02T07:58:14.694102Z",
        "processed_by": null,
        "created_date": "2022-06-02T07:58:14.668924Z",
        "owner_company": 10168,
        "other_attributes": null,
        "job_wo_number": "3656784",
        "expected_delivery_date": null,
        "phase_code": "12",
        "cost_code": ""
    },
    .
    .
    .
]
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=235