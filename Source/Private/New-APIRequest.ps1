Function New-RemarcableRequest {
    [CmdletBinding()]
    [OutputType([hashtable])]
    param (
        [Parameter(Mandatory)]
        [string]
        $URI,
        [Parameter(Mandatory)]
        [Microsoft.PowerShell.Commands.WebRequestMethod]
        $Method,
        [hashtable]
        $Parameters
    )
    process {
        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        # Check if the API token needs to be refreshed, if so an API call is made.
        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        # Some API's use the new Authorization header, some still use it as a field
        $Token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password

        $Parameters.token = $Token
        $Parameters.account_email = $script:RemarcableClient.APICredential.UserName

        $Headers = @{
            "content-type" = "application/json"
            "Authorization" = "token $($Token)"
        }

        $URI = "$($script:RemarcableClient.URI)$URI"

        return @{
            Body = $Parameters
            Method = $Method
            Uri = $URI
            Headers = $Headers
        }
    }
}