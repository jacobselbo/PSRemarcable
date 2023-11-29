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
| **Name** | **Purpose** |
| - | - |
| Initialize-RemarcableClient |  Creates token to be used for all other functions  |
| Get-AssetItem | Gets a list of remarcable asset items |
| Get-AssetRate | Gets a list of asset rates |
| Get-AssetRequest | Gets an asset request |
| Search-AssetRequest | Gets a list asset requests |
| Get-PriceFile | Gets a list of price files from ID |
| Get-PriceFileItemPrice | Gets price file item prices from ID |
| Search-PriceFile | Gets a list of price files from search terms |
| Import-PriceFile | Creates or updates price file items |
| Import-StockFile | Creates or updates stock file items |
| Get-Project | Gets a project from project ID |
| Get-ProjectPOTTD | Gets a list of projects' grand total to date |
| Search-Project | Gets a list of projects from fields |
| Import-Project | Creates or updates a project in Remarcable |
| Import-BulkProject | Creates or updates a list of projects in Remarcable |
| Import-ProjectList | Creates or updates a project list in Remarcable |
| Get-ERPOrder | Gets account system order information |
| Get-InvoiceItem | Gets a list of invoice items |
| Get-SalesOrderItem | Gets a list of SO items |
| Get-UserAccount | Gets a list of user accounts in Remarcable |
| Import-PONumber | Sends a PO number and phase code to a project |
| Get-Order | Gets a list of PO items from IDs |
| Search-Order | Gets a list of POs based of fields |
| Search-OrderItem | Gets a list of PO items based of fields |
| New-Address | Creates an address object |
| New-PhaseCode | Creates a phase code object |
| New-PriceFileItem | Creates a price file object |
| New-StockFileItem | Creats a stock file object |
| New-Project | Creates a project object |
| New-ProjectList | Creates a project list object |
| New-ProjectListItem | Creates a list item for a project list |