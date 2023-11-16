<#
    .SYNOPSIS
        Creates a Remarcable Client that can be used to retrieve and refresh api tokens

    .DESCRIPTION
        Creates a Remarcable Client that can be used to retrieve and refresh api tokens

    .PARAMETER APIToken
        Integration API Token to be used

    .PARAMETER Email
        Email of admin to create token for

    .PARAMETER Password
        SSO Password of admin to create token for

    .PARAMETER URI
        Default is set to "https://www.remarcable.com", can be set if Remarcable changes API uri
#>
Function Initialize-RemarcableClient {
    [CmdletBinding(DefaultParameterSetName = "WithAPIToken")]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName = "WithAPIToken")]
        [securestring]
        $APIToken,

        [Parameter(Mandatory = $true, ParameterSetName = "WithAccountCreation")]
        [mailaddress]
        $Email,

        [Parameter(Mandatory = $true, ParameterSetName = "WithAccountCreation")]
        [securestring]
        $Password,

        [string]
        [ValidatePattern('http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?')]
        $URI = "https://www.remarcable.com"
    )

    Process {
        if ($APIToken) {
            $script:RemarcableClient = [RemarcableClient]::new($APIToken, $URI)
        } else {
            $Client = [RemarcableClient]::new($Email.Address, $Password, $URI)

            $Client.RefreshAPIToken() # Initalize token

            $script:RemarcableClient = $Client
        }
    }
}