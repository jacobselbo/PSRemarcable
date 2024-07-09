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

    .PARAMETER Raw
        Allows raw hashtable input. Used for data manipulation
#>
Function New-Address {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [string]
        $Field1,
        [Parameter(ParameterSetName = "NotRaw")]
        [string]
        $Field2,

        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [string]
        $City,
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [string]
        $State,
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [ValidateSet("USA", "Canada")]
        [string]
        $Country,

        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [string]
        $ZIP,

        [Parameter(ParameterSetName = "NotRaw")]
        [string]
        $ShippingNote,

        [Parameter(Mandatory = $true, ParameterSetName = "Raw")]
        [hashtable]
        $Raw
    )
    Process {
        if ($Raw) {
            return [Address]::new($Raw)
        } else {
            $Address = [Address]::new($Field1, $City, $State, $ZIP, $Country)

            $Address.Field2 = $Field2
            $Address.ShippingNote = $ShippingNote

            return $Address
        }
    }
}