<#
    .SYNOPSIS
        Retrieves a list of user accounts associated with the given company

    .DESCRIPTION
        Retrieves a list of user accounts associated with the given company

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=514

    .OUTPUTS
        Array of users, with each user: (id, account_email, first_name, last_name, work_phone, employee_id, job_title, user_group_name)
#>
Function Get-UserAccount {
    Begin {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        $URI = "$($script:RemarcableClient.URI)/buyer_api/v1/ListUserAccounts/"
        $Parameters = @{
            token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
        }
    }
    Process {
        try {
            return Invoke-RestMethod -Uri $URI -Body $Parameters -Method GET
        } catch {
            Write-Error "Failed to retrieve Remarcable user accounts"
            Write-Error $_
        }
    }
}