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

    .PARAMETER Raw
        Allows raw hashtable input. Used for data manipulation
#>
Function New-UserAccount {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [ValidateLength(1, 40)]
        [string]
        $FirstName,
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [ValidateLength(1, 40)]
        [string]
        $LastName,
        [Parameter(Mandatory = $true, ParameterSetName = "NotRaw")]
        [mailaddress]
        $Email,
        [Parameter(ParameterSetName = "NotRaw")]
        [ValidateLength(1, 20)]
        [string]
        $PhoneNumber,
        [Parameter(ParameterSetName = "NotRaw")]
        [ValidateLength(1, 200)]
        [string]
        $EmployeeID,
        [Parameter(ParameterSetName = "NotRaw")]
        [string]
        $CompanyBranchName,
        [Parameter(ParameterSetName = "NotRaw")]
        [string]
        $UserGroupName,
        [Parameter(ParameterSetName = "NotRaw")]
        [ValidateLength(1, 200)]
        [string]
        $JobTitle,

        [Parameter(Mandatory = $true, ParameterSetName = "Raw")]
        [hashtable]
        $Raw
    )
    Process {
        if ($Raw) {
            return [UserAccount]::new($Raw)
        } else {
            $UserAccount = [UserAccount]::new($FirstName, $LastName, $Email)

            $PSBoundParameters.Keys.ForEach{
                $UserAccount.$_ = $PSBoundParameters[$_]
            }

            return $UserAccount
        }
    }
}