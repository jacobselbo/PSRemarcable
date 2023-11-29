---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Get-UserAccount

## SYNOPSIS
Retrieves a list of user accounts associated with the given company.

## SYNTAX

```
Get-UserAccount
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-UserAccount
```

## INPUTS

### None

## OUTPUTS

```json
[
    {
        "id": 1,
        "email": "james@example.com",
        "first_name": "James",
        "last_name": "Lanoue",
        "work_phone": "3348866181",
        "employee_id": "jamesl",
        "job_title": "Project Manager",
        "user_group_name": "All Access"
    },
    {
        "id": 2,
        "email": "sandra@example.com",
        "first_name": "Sandra",
        "last_name": "Smith",
        "work_phone": "8069307241",
        "employee_id": "sandras",
        "job_title": "Admin",
        "user_group_name": "Accounting"
    },
    {
        "id": 3,
        "email": "marian@example.com",
        "first_name": "Marian",
        "last_name": "Lamkin",
        "work_phone": "4808911474",
        "employee_id": "marianl",
        "job_title": "Maintenance",
        "user_group_name": "All Access"
    },
    {
        "id": 4,
        "email": "darnell@example.com",
        "first_name": "Darnell",
        "last_name": "Coppedge",
        "work_phone": "4048937150",
        "employee_id": "darnellc",
        "job_title": "Field Manager",
        "user_group_name": null
    }
]
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=514