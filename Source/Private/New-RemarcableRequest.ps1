Function New-RemarcableRequest {
    param (
        [Parameter(Mandatory)]
        [string]
        $URI,
        [Parameter(Mandatory)]
        [Microsoft.PowerShell.Commands.WebRequestMethod]
        $Method,
        [hashtable]
        $Parameters,

        [switch]
        $JSON
    )
    process {
        $NewBody = $null -ne $Parameters ? $Parameters : @{}

        if ($null -eq $script:RemarcableClient) {
            Throw "Remarcable API Client has not yet been initalized. Please run Initialize-RemarcableClient and try again"
        }

        # Check if the API token needs to be refreshed, if so an API call is made.
        $script:RemarcableClient.DoesAPITokenNeedRefresh()

        # Some API's use the new Authorization header, some still use it as a field
        $Token = $script:RemarcableClient.APICredential.GetNetworkCredential().Password
        $NewBody.token = $Token

        if ($script:RemarcableClient.UsesAccountAPI) {
            $NewBody.account_email = $script:RemarcableClient.APICredential.UserName
        }

        $Headers = @{
            "Authorization" = "token $($Token)"
        }

        $URI = "$($script:RemarcableClient.URI)$URI"

        if ($JSON.IsPresent) {
            $NewBody = $NewBody | ConvertTo-Json
            $Headers["Content-Type"] = "application/json"
        }

        return @{
            Body = $NewBody
            Method = $Method
            Uri = $URI
            Headers = $Headers
        }
    }
}