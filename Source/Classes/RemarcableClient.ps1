class RemarcableClient {
    [pscredential] $AccountCredential
    [pscredential] $APICredential
    [datetime] $TokenRefreshTime
    [int] $HoursToRefresh = 8
    [string] $URI
    [bool] $UsesAccountAPI = $false

    # Create token every 8 hours through user email and SSO password
    RemarcableClient($Email, [securestring] $Password, $URI) {
        $this.AccountCredential = [pscredential]::new($Email, $Password)
        $this.UsesAccountAPI = $true
        $this.URI = $URI
    }

    # Use integration token
    RemarcableClient([securestring] $Token, $URI) {
        $this.APICredential = [pscredential]::new("NULL", $Token)
        $this.URI = $URI
    }

    # Re-create email and password token
    [void] RefreshAPIToken() {
        $APIURI = "$($this.URI)/api/v1/auth/token/"
        $Body = @{
            email = $this.AccountCredential.UserName
            password = $this.AccountCredential.GetNetworkCredential().Password
        }

        try {
            $TokenData = Invoke-RestMethod -Uri $APIURI -Body $Body -Method Post

            $this.APICredential = [pscredential]::new($this.AccountCredential.UserName, ($TokenData.token | ConvertTo-SecureString -AsPlainText))
            $this.TokenRefreshTime = $TokenData.created_on.AddHours($this.HoursToRefresh)
        } catch {
            Write-Error "Failed to retrieve token from Remarcable"
            Write-Error $_
        }
    }

    # Checks if the API token needs to be refreshed, if so refreshes it
    [void] DoesAPITokenNeedRefresh() {
        if ($this.UsesAccountAPI -and (Get-Date) -ge ($this.TokenRefreshTime)) {
            $this.RefreshAPIToken()
        }
    }
}