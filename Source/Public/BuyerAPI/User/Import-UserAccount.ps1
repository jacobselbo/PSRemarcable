<#
    .SYNOPSIS
        Create or update existing users.

    .DESCRIPTION
        Create or update existing users. When updating an existing user, you need to send all the fields.

    .LINK
        https://www.remarcable.com/helpcenter?object_id=12&object_type=section&section_document_id=1301
#>
Function Get-UserAccount {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [AccountUser]
        $AcocuntUser
    )
    Begin {
        $RequestParameters = New-RemarcableRequest -URI "/buyer_api/v1/CreateUpdateUserAccount/" -Method POST -Parameters $AcocuntUser.Serialize()
    }
    Process {
        try {
            return Invoke-RestMethod @RequestParameters
        } catch {
            Write-Error "Failed to retrieve Remarcable user accounts"
            Write-Error $_
        }
    }
}