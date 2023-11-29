---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Search-PriceFile

## SYNOPSIS
Gets a list of price files.

## SYNTAX

```
Search-PriceFile [[-Search] <String>] [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Search-PriceFile -Search "Wire"
```

## PARAMETERS

### -Search
Searches price files and company names for keywords.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

```json
[
    {
        "id": "632c01aa-0600-493d-8fde-137f365952de",
        "name": "Blanket Pricing",
        "supplying_company_name": "Van Meter",
        "supplying_company_id": "532c01aa-0600-493d-8fde-137f365952de",
        "supplying_company_branch_name": null,
        "supplying_company_branch_id": null,
        "is_shared_with_supplier": true,
        "is_default": true,
        "is_locked": false,
        "notification_list_json": [
            {
                "name": "Contractor2 Name",
                "id": 1,
                "email": "contractor2@yourdomain.com"
            }
        ],
        "expire_date": null,
        "created_date": "2022-01-24T12:56:13.615440Z",
        "updated_on": "2022-01-24T12:56:13.615451Z",
        "price_updated_on": "2021-07-08T04:35:54.410008Z"
    },
    .
    .
    .
]
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=69