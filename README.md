## Description ##

This is a Powershell Module for interacting with the Remarcable REST API. 

## Installation ##

This module hasn't been uploaded to the Powershell Gallery yet, but after each build a zip archive file containg the module can be obtained.
The PSRemarcable folder can either be moved to a powershell modules folder and imported with the following command:
```Powershell
Import-Module -Name PSRemarcable
```
Or the file folder can be moved to any folder of choice and the following command can be ran, with {MODULEPATH} replaced by the path to the module.
```Powershell
Import-Module -Name {MODULEPATH}
```

## Build ##

If you are building this repository from the source, verify that ModuleBuilder is installed. If not then run the following command:
```Powershell
Install-Module ModuleBuilder
```
Then run the build command:
```Powershell
Build-Module -SourcePath .\Source\
```

## Documentation ##
The Remarcable API documentation can be found [here](https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=64).

Powershell documentation can be found in `/Docs/`

## Current Functions
| **Name** | **Purpose** | **Documentation** |
| - | - | - |
| Initialize-RemarcableClient |  Creates token to be used for all other functions  | [Link](Docs\Initialize-RemarcableClient.md) |
| Get-AssetItem | Gets a list of remarcable asset items | [Link](Docs\Get-AssetItem.md) |
| Get-AssetRate | Gets a list of asset rates | [Link](Docs\Get-AssetRate.md) |
| Get-AssetRequest | Gets an asset request | [Link](Docs\Get-AssetRequest.md) |
| Search-AssetRequest | Gets a list asset requests | [Link](Docs\Search-AssetRequest.md) |
| Get-PriceFile | Gets a list of price files from ID | [Link](Docs\Get-PriceFile.md) |
| Get-PriceFileItemPrice | Gets price file item prices from ID | [Link](Docs\Get-PriceFileItemPrice.md) |
| Search-PriceFile | Gets a list of price files from search terms | [Link](Docs\Get-PriceFile.md) |
| Import-PriceFile | Creates or updates price file items | [Link](Docs\Import-PriceFile.md) |
| Import-StockFile | Creates or updates stock file items | [Link](Docs\Import-StockFile.md) |
| Get-Project | Gets a project from project ID | [Link](Docs\Get-Project.md) |
| Get-ProjectPOTTD | Gets a list of projects' grand total to date | [Link](Docs\Get-ProjectPOTTD.md) |
| Search-Project | Gets a list of projects from fields | [Link](Docs\Search-Project.md) |
| Import-Project | Creates or updates a project in Remarcable | [Link](Docs\Import-Project.md) |
| Import-BulkProject | Creates or updates a list of projects in Remarcable | [Link](Docs\Import-BulkProject.md) |
| Import-ProjectList | Creates or updates a project list in Remarcable | [Link](Docs\Import-ProjectList.md) |
| Get-ERPOrder | Gets account system order information | [Link](Docs\Get-ERPOrder.md) |
| Get-InvoiceItem | Gets a list of invoice items | [Link](Docs\Get-InvoiceItem.md) |
| Get-SalesOrderItem | Gets a list of SO items | [Link](Docs\Get-SalesOrderItem.md) |
| Get-UserAccount | Gets a list of user accounts in Remarcable | [Link](Docs\Get-UserAccount.md) |
| Import-UserAccount | Imports or updates a user account in Remarcable | [Link](Docs\Import-UserAccount.md) |
| Import-PONumber | Sends a PO number and phase code to a project | [Link](Docs\Import-PONumber.md) |
| Get-Order | Gets a list of PO items from IDs | [Link](Docs\Get-Order.md) |
| Search-Order | Gets a list of POs based of fields | [Link](Docs\Search-Order.md) |
| Search-OrderItem | Gets a list of PO items based of fields | [Link](Docs\Search-OrderItem.md) |
| New-Address | Creates an address object | [Link](Docs\New-Address.md) |
| New-PhaseCode | Creates a phase code object | [Link](Docs\New-PhaseCode.md) |
| New-PriceFileItem | Creates a price file object | [Link](Docs\New-PriceFileItem.md) |
| New-StockFileItem | Creats a stock file object | [Link](Docs\New-StockFileItem.md) |
| New-Project | Creates a project object | [Link](Docs\New-Project.md) |
| New-ProjectList | Creates a project list object | [Link](Docs\New-ProjectList.md) |
| New-ProjectListItem | Creates a list item for a project list | [Link](Docs\New-ProjectListItem.md) |