<#
    .SYNOPSIS
        Creates an Address object for Project use

    .DESCRIPTION
        Creates an Address object for Project use. This method is used to create code readability

    .PARAMETER Field1
        Street Number and Address

    .PARAMETER Field2
        Apartment or Suite #

    .PARAMETER City
        City name

    .PARAMETER State
        State Abbreviation. i.e. "NY", "CA", "OH", "IN"

    .PARAMETER ZIP
        5 digit USPS Postal ZIP code

    .PARAMETER Country
        Country of Address. Avaiable options are "USA", "Canada"

    .PARAMETER ShippingNote
        Delivery Location. Such as: Electric Trailer
#>
Function New-Address {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $Field1,
        [string]
        $Field2,

        [Parameter(Mandatory = $true)]
        [string]
        $City,
        [Parameter(Mandatory = $true)]
        [string]
        $State,
        [Parameter(Mandatory = $true)]
        [ValidateSet("USA", "Canada")]
        [string]
        $Country,

        [Parameter(Mandatory = $true)]
        [string]
        $ZIP,

        [string]
        $ShippingNote
    )
    Process {
        $Address = [Address]::new($Field1, $City, $State, $ZIP, $Country)

        $Address.Field2 = $Field2
        $Address.ShippingNote = $ShippingNote

        return $Address
    }
}