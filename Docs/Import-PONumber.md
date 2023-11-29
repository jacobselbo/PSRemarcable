---
external help file: PSRemarcable-help.xml
Module Name: PSRemarcable
online version:
schema: 2.0.0
---

# Import-PONumber

## SYNOPSIS
Sends a PO Number and phase code to an existing project to be used for any upcoming order. Remarcable will store the recieved PO and phase code in a buffer till it's been consumed by the user

## SYNTAX

```
Import-PONumber [-ProjectID] <String> [-UserEmail] <MailAddress> [-PONumber] <String> [[-PhaseCode] <String>]
 [[-JobNumber] <String>] [[-OrderName] <String>] [<CommonParameters>]
```

## EXAMPLES

### Example 1
```powershell
PS C:\> Import-PONumber -ProjectID "9d7f3963-5e6c-42d1-975a-4157d1b5b1c5" -UserEmail test@gmail.com -PONumber "P298372"
```

## PARAMETERS

### -ProjectID
ID of Project to send PO Number.

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

### -UserEmail
Email of user to use PO number, and needs to be owner of project.

```yaml
Type: MailAddress
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```


### -JobNumber
Any string up to 100 characters.

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

### -OrderName
Any string up to 500 characters.

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

### -PONumber
Any string up to 50 characters.

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

### -PhaseCode
Any string up to 50 characters.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

```json
{
    "detail": "success",
    "redirect_link": "www.remarcable.com/project/bom/facbef31-50ba-4599-99f8-765cf631191a#bottom"
}
```

## RELATED LINKS
https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=71