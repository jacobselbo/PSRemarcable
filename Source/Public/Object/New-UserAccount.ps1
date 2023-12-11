<#
    .SYNOPSIS
        Creates a User Account Object to be imported or updated.

    .DESCRIPTION
        Creates a User Account Object to be imported or updated. This method is used to create code readability

    .PARAMETER FirstName
        User first name

    .PARAMETER LastName
        User last name

    .PARAMETER Email
        User email

    .PARAMETER PhoneNumber
        User phone number

    .PARAMETER EmployeeID
        User Employee ID

    .PARAMETER CompanyBranchName
        Company Branch Name

    .PARAMETER UserGroupName
        User group name

    .PARAMETER JobTitle
        User job title
#>
Function New-StockFileItem {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateRange(1, 40)]
        [string]
        $FirstName,
        [Parameter(Mandatory = $true)]
        [ValidateRange(1, 40)]
        [string]
        $LastName,
        [Parameter(Mandatory = $true)]
        [mailaddress]
        $Email,
        [ValidateRange(1, 20)]
        [string]
        $PhoneNumber,
        [ValidateLength(1, 200)]
        [string]
        $EmployeeID,
        [string]
        $CompanyBranchName,
        [string]
        $UserGroupName,
        [ValidateLength(1, 200)]
        [string]
        $JobTitle
    )
    Process {
        $UserAccount = [UserAccount]::new($FirstName, $LastName, $Email)

        $PSBoundParameters.Keys.ForEach{
            $UserAccount.$_ = $PSBoundParameters[$_]
        }

        return $UserAccount
    }
}