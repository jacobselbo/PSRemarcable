---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Get-AssetRequest

## SYNOPSIS
Retrieve an asset request based of an asset request ID.

## SYNTAX

```
Get-AssetRequest [-ToolRequestID] <String> [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-AssetRequest -ToolRequestID "b70f94a7-dc97-487a-8c52-97b5b6b25457"
```

## PARAMETERS

### -ToolRequestID
ID of tool request to obtain information.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

```json
{
    "id": "6cc60f1e-d67d-40e1-96f2-18603ffd4cc1",
    "status": "shipped",
    "type": "project",
    "foremen_approved": true,
    "warehouse": {
        "id": "3493d14c-7df9-49f7-8f8e-32407ed8a445",
        "name": "MRO",
        "is_billed": false,
        "require_receive_inspection": true,
        "warehouse_type": "Tools"
    },
    "request_num": 1705,
    "requester": {
        "email": "purchaser@remarcable.com",
        "first_name": "Purchaser",
        "last_name": "Name",
        "company": 10168,
        "work_phone": "1237851024",
        "id": 1,
        "get_full_name": "Purchaser Name",
        "job_title": "Purchasing Manager"
    },
    "project": {
        "id": "39271fa3-19c7-48f1-9a25-0789fe907775",
        "name": "ABC",
        "description": "some thing",
        "tax_rate": "7.00",
        "main_job_num": "365678-4A",
        "tax_exempt": true,
        "tax_certificate_link": "tax_certificate/Lighthouse_Electric/2021/39271fa3-19c7-48f1-9a25-0789fe907775.pdf",
        "is_job": true,
        "is_overhead": true,
        "client_company_code": "1",
        "is_group": false,
        "parent": null
    },
    "delivery_address": {
        "id": "308ab61e-75d1-440d-9fa6-8a349fbe62b4",
        "zip": "57050",
        "city": "Metz",
        "note": "test new",
        "state": "AZ",
        "Field_1": "Ertf Groupe",
        "Field_2": "R tests",
        "country": "USA",
        "ship_to_id": "3656784"
    },
    "delivery_date": "2022-04-22T19:22:43.749000Z",
    "messages": null,
    "shipping_status": [
        {
            "status": "closed",
            "content": "Request closed",
            "created_date": "2022-04-22T16:00:31.347472Z",
            "tracking_num": null,
            "submitting_person": "Danil Khomenko",
            "submitting_person_id": "241",
            "expected_shipping_date": null
        },
        {
            "status": "partly shipped",
            "content": "Some of the items are shipped.",
            "created_date": "2022-04-22T16:00:08.915202Z",
            "tracking_num": null,
            "submitting_person": "Danil Khomenko",
            "submitting_person_id": "241",
            "expected_shipping_date": "2022-04-21T18:00:00.000000Z"
        },
        {
            "status": "partly received",
            "content": "0 item(s) received.",
            "created_date": "2022-04-22T12:13:48.689788Z",
            "submitting_person": "Danil Khomenko",
            "submitting_person_id": "241"
        },
        {
            "status": "partly received",
            "content": "got 1 1 item(s) received.",
            "created_date": "2022-04-22T12:13:29.813887Z",
            "submitting_person": "Foreman2 Name",
            "submitting_person_id": "3"
        },
        {
            "status": "partly shipped",
            "content": "Some of the items are shipped.",
            "created_date": "2022-04-22T11:57:10.435856Z",
            "tracking_num": null,
            "submitting_person": "Danil Khomenko",
            "submitting_person_id": "241",
            "expected_shipping_date": "2022-04-21T18:00:00.000000Z"
        }
    ],
    "submitted_on": "2022-04-21T19:22:45.853910Z",
    "processed_by": {
        "email": "purchaser@remarcable.com",
        "first_name": "Purchaser",
        "last_name": "Name",
        "company": 10168,
        "work_phone": "1237851024",
        "id": 1,
        "get_full_name": "Purchaser Name",
        "job_title": "Purchasing Manager"
    },
    "created_date": "2022-04-21T19:22:45.850946Z",
    "owner_company": 10168,
    "other_attributes": null,
    "job_wo_number": "365678-4A",
    "expected_delivery_date": null,
    "phase_code": "",
    "cost_code": "",
    "from_warehouse": null,
    "owner": null,
    "request_items": [
        {
            "id": "6b61c352-3291-437b-9841-03830164ca5e",
            "tool_model": "1764dc27-fa6e-4e2d-8b70-4ac3b7b23fe3",
            "model_type": "Tools",
            "tool_item": null,
            "name": "2.5 Gallon Flexvolt Cordless Air Compressor Kit",
            "category": "Air Tools",
            "sub_category": "Air Drill",
            "image_name": "user_tool_upload/images/10168demo/774g9e3cca5c0gc317090577afcd8e",
            "final_unit": "EA",
            "quantity": 1,
            "requester_comments": null,
            "reply_comments": null,
            "created_date": "2022-04-21T19:22:45.867994Z",
            "status": "active",
            "phase_code": "",
            "cost_code": "",
            "completed_transfer_items": [],
            "aggregated_config_code": "",
            "manufacturer_stock_num": "DCC2560T1"
        },
        {
            "id": "9fc901d6-8918-4b7c-900d-b36c701ba139",
            "tool_model": "9ebf85e0-ad7c-4f37-a54c-2ccbd1edc7ec",
            "model_type": "Tools",
            "tool_item": null,
            "name": "test_to_archive",
            "category": "Air Tools",
            "sub_category": "Air Compressor",
            "image_name": "",
            "final_unit": "EA",
            "quantity": 2,
            "requester_comments": null,
            "reply_comments": null,
            "created_date": "2022-04-21T19:22:45.861927Z",
            "status": "active",
            "phase_code": "",
            "cost_code": "",
            "completed_transfer_items": [
                {
                    "id": "bae77ada-81e1-4f7b-9d86-a194363ae2c7",
                    "tool_item": "60c19267-0989-4fc0-9203-80db9887131f",
                    "model_type": "Tools",
                    "is_complete": true,
                    "quantity": 1,
                    "received_quantity": null,
                    "last_billed": "2022-07-03T13:00:19.015463Z",
                    "transfer_time": "2022-04-22T11:57:10.386543Z",
                    "created_date": "2022-04-22T11:48:23.398530Z",
                    "tool_request_item": "9fc901d6-8918-4b7c-900d-b36c701ba139",
                    "inspection": null,
                    "bin_location": null,
                    "receiving_warehouse": null,
                    "from_string": "MRO",
                    "other": null,
                    "phase_code": "",
                    "cost_code": "",
                    "from_owner": null,
                    "from_project": null,
                    "from_warehouse": null,
                    "owner": null,
                    "project": "39271fa3-19c7-48f1-9a25-0789fe907775",
                    "transfer_expiry_time": "2022-04-22T15:55:08.659360Z",
                    "days_on_site": null,
                    "aggregated_config_code": "",
                    "manufacturer_stock_num": "23432"
                },
                {
                    "id": "d3b01d50-9f9b-4d03-a81b-b38fdf039ba3",
                    "tool_item": "60c19267-0989-4fc0-9203-80db9887131f",
                    "model_type": "Tools",
                    "is_complete": true,
                    "quantity": 7,
                    "received_quantity": null,
                    "last_billed": "2022-07-03T13:00:19.015463Z",
                    "transfer_time": "2022-04-22T16:00:08.841548Z",
                    "created_date": "2022-04-22T15:57:58.829980Z",
                    "tool_request_item": "9fc901d6-8918-4b7c-900d-b36c701ba139",
                    "inspection": null,
                    "bin_location": null,
                    "receiving_warehouse": null,
                    "from_string": "MRO",
                    "other": null,
                    "phase_code": "",
                    "cost_code": "",
                    "from_owner": null,
                    "from_project": null,
                    "from_warehouse": null,
                    "owner": null,
                    "project": "39271fa3-19c7-48f1-9a25-0789fe907775",
                    "transfer_expiry_time": "2022-04-30T12:19:22.600895Z",
                    "days_on_site": null,
                    "aggregated_config_code": "",
                    "manufacturer_stock_num": "23432"
                },
                {
                    "id": "3cadd6ab-c17a-4e76-a366-74288a91c3de",
                    "tool_item": "60c19267-0989-4fc0-9203-80db9887131f",
                    "model_type": "Tools",
                    "is_complete": true,
                    "quantity": 1,
                    "received_quantity": null,
                    "last_billed": "2022-07-03T13:00:19.015463Z",
                    "transfer_time": "2022-04-22T16:00:08.841548Z",
                    "created_date": "2022-04-22T16:02:48.334442Z",
                    "tool_request_item": "9fc901d6-8918-4b7c-900d-b36c701ba139",
                    "inspection": null,
                    "bin_location": null,
                    "receiving_warehouse": null,
                    "from_string": "MRO",
                    "other": null,
                    "phase_code": "",
                    "cost_code": "",
                    "from_owner": null,
                    "from_project": null,
                    "from_warehouse": null,
                    "owner": null,
                    "project": "39271fa3-19c7-48f1-9a25-0789fe907775",
                    "transfer_expiry_time": "2022-04-22T16:02:48.332862Z",
                    "days_on_site": null,
                    "aggregated_config_code": "",
                    "manufacturer_stock_num": "23432"
                },
                {
                    "id": "24b49f8d-142f-4c21-b615-f0c3f4c236e6",
                    "tool_item": "60c19267-0989-4fc0-9203-80db9887131f",
                    "model_type": "Tools",
                    "is_complete": true,
                    "quantity": 1,
                    "received_quantity": null,
                    "last_billed": "2022-07-03T13:00:19.015463Z",
                    "transfer_time": "2022-04-22T16:00:08.841548Z",
                    "created_date": "2022-04-22T16:02:48.366314Z",
                    "tool_request_item": "9fc901d6-8918-4b7c-900d-b36c701ba139",
                    "inspection": null,
                    "bin_location": null,
                    "receiving_warehouse": null,
                    "from_string": "MRO",
                    "other": null,
                    "phase_code": "",
                    "cost_code": "",
                    "from_owner": null,
                    "from_project": null,
                    "from_warehouse": null,
                    "owner": null,
                    "project": "39271fa3-19c7-48f1-9a25-0789fe907775",
                    "transfer_expiry_time": "2022-04-22T16:02:48.364425Z",
                    "days_on_site": null,
                    "aggregated_config_code": "",
                    "manufacturer_stock_num": "23432"
                }
            ],
            "aggregated_config_code": "",
            "manufacturer_stock_num": "23432"
        },
        {
            "id": "e8cdb0c7-de33-4b58-9b99-7ea96083c10c",
            "tool_model": "52b52481-a4a6-499d-988f-3e4f7d230fdc",
            "model_type": "Tools",
            "tool_item": null,
            "name": "flat washer",
            "category": "Misc.",
            "sub_category": "Misc.",
            "image_name": "",
            "final_unit": "EA",
            "quantity": 4,
            "requester_comments": null,
            "reply_comments": null,
            "created_date": "2022-04-22T15:58:52.980143Z",
            "status": "active",
            "phase_code": "",
            "cost_code": "",
            "completed_transfer_items": [
                {
                    "id": "090b270d-4713-4470-b073-92b923d13c97",
                    "tool_item": "3d024046-307e-4022-99db-660a217f3939",
                    "model_type": "Tools",
                    "is_complete": true,
                    "quantity": 1,
                    "received_quantity": null,
                    "last_billed": "2022-07-03T13:00:19.015463Z",
                    "transfer_time": "2022-04-22T16:00:08.841548Z",
                    "created_date": "2022-04-22T15:59:45.464489Z",
                    "tool_request_item": "e8cdb0c7-de33-4b58-9b99-7ea96083c10c",
                    "inspection": null,
                    "bin_location": null,
                    "receiving_warehouse": null,
                    "from_string": "MRO",
                    "other": null,
                    "phase_code": "",
                    "cost_code": "",
                    "from_owner": null,
                    "from_project": null,
                    "from_warehouse": null,
                    "owner": null,
                    "project": "39271fa3-19c7-48f1-9a25-0789fe907775",
                    "transfer_expiry_time": "2022-05-01T13:53:09.917730Z",
                    "days_on_site": null,
                    "aggregated_config_code": "",
                    "manufacturer_stock_num": "2234"
                }
            ],
            "aggregated_config_code": "",
            "manufacturer_stock_num": "2234"
        }
    ],
    "unattached_items": [        
        {
            "id": "a318c66d-3c30-4cdf-b42a-1c0dc3450f2f",
            "tool_item": "33d7e33c-8eb2-43f0-ab72-672084eabf18",
            "model_type": "Tools",
            "is_complete": true,
            "quantity": 1,
            "received_quantity": null,
            "last_billed": null,
            "transfer_time": "2023-11-01T12:06:47.174004Z",
            "created_date": "2023-11-01T12:06:31.151954Z",
            "tool_request_item": null,
            "inspection": null,
            "bin_location": "28773661-d0c9-47ab-be24-cac32823e397",
            "receiving_warehouse": null,
            "from_string": "MRO",
            "other": null,
            "phase_code": "",
            "cost_code": "",
            "from_owner": null,
            "from_project": null,
            "from_warehouse": "3493d14c-7df9-49f7-8f8e-32407ed8a445",
            "owner": null,
            "project": "39271fa3-19c7-48f1-9a25-0789fe907775",
            "transfer_expiry_time": null,
            "days_on_site": "1 day on-site",
            "aggregated_config_code": "",
            "manufacturer_stock_num": "122A"
        }
    ]
}
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=236