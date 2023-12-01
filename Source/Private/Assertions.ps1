function Assert-Exist {
    param(
        [Parameter(ValueFromPipeline)]
        $Parameter,
        [string] $Message = "Failed null assertion.",
        [bool] $Return = $False
    )
    process {
        if ($null -eq $Parameter) {
            throw $Message
        } else {
            if ($Return) { return $Parameter }
        }
    }
}

function Assert-Equal {
    param(
        [Parameter(ValueFromPipeline)]
        $First,
        $Other,
        [string] $Message = "Failed equals assertion.",
        [bool] $Return = $False
    )
    process {
        if ($First -eq $Other) {
            if ($Return) { return $First }
        } else {
            throw $Message
        }
    }
}

function Assert-NotEqual {
    param(
        [Parameter(ValueFromPipeline)]
        $First,
        $Other,
        [string] $Message = "Failed not equals assertion.",
        [bool] $Return = $False
    )
    process {
        if ($First -ne $Other) {
            if ($Return) { return $First }
        } else {
            throw $Message
        }
    }
}

function Assert-GreaterThan {
    param (
        [Parameter(ValueFromPipeline)]
        $First,
        $Other,
        [string] $Message = "Failed not equals assertion.",
        [bool] $Return = $False
    )
    process {
        if ($First -gt $Other) {
            if ($Return) { return $First }
        } else {
            throw $Message
        }
    }
}

function Assert-GreaterThanEqualTo {
    param (
        [Parameter(ValueFromPipeline)]
        $First,
        $Other,
        [string] $Message = "Failed not equals assertion.",
        [bool] $Return = $False
    )
    process {
        if ($First -ge $Other) {
            if ($Return) { return $First }
        } else {
            throw $Message
        }
    }
}

function Assert-LessThan {
    param (
        [Parameter(ValueFromPipeline)]
        $First,
        $Other,
        [string] $Message = "Failed not equals assertion.",
        [bool] $Return = $False
    )
    process {
        if ($First -lt $Other) {
            if ($Return) { return $First }
        } else {
            throw $Message
        }
    }
}

function Assert-LessThanEqualTo {
    param (
        [Parameter(ValueFromPipeline)]
        $First,
        $Other,
        [string] $Message = "Failed not equals assertion.",
        [bool] $Return = $False
    )
    process {
        if ($First -le $Other) {
            if ($Return) { return $First }
        } else {
            throw $Message
        }
    }
}