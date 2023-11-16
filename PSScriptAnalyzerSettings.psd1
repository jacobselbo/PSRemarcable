@{
    Severity = @('Error','Warning')
    IncludeDefaultRules = $true
    ExcludeRules=@(
        'PSAvoidUsingConvertToSecureStringWithPlainText',
        'PSUseShouldProcessForStateChangingFunctions'
    )
}