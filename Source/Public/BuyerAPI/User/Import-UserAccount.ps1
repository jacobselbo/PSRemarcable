<#
    .SYNOPSIS
        Create or update existing users.

    .DESCRIPTION
        Create or update existing users. When updating an existing user, you need to send all the fields.

    .PARAMETER AcocuntUser
        Account User to import or update.

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=1301
#>
Function Import-UserAccount {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [UserAccount]
        $UserAccount
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/CreateUpdateUserAccount/" -Method POST -Parameters $UserAccount.Serialize() -JSON
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters
        } catch {
            Write-Error "Failed to import Remarcable user accounts"
            Write-Error $_
        }
    }
}