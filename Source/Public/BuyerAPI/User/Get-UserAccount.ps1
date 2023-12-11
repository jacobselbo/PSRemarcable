<#
    .SYNOPSIS
        Retrieves a list of user accounts associated with the given company

    .DESCRIPTION
        Retrieves a list of user accounts associated with the given company

    .PARAMETER AsClass
        Return all user accounts in classes instead of raw data.

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=514

    .OUTPUTS
        Array of users, with each user: (id, account_email, first_name, last_name, work_phone, employee_id, job_title, user_group_name)
#>
Function Get-UserAccount {
    [CmdletBinding()]
    param (
        [switch]
        $AsClass
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/ListUserAccounts/" -Method GET
    }
    Process {
        try {
            $Data = Invoke-RestMethod @RequestParameters

            if ($AsClass) {
                $NewData = @()

                foreach ($RawAccount in $Data) {
                    $NewData += [UserAccount]::new($RawAccount)
                }

                return $NewData
            } else {
                return $Data
            }
        } catch {
            Write-Error "Failed to retrieve Remarcable user accounts"
            Write-Error $_
        }
    }
}