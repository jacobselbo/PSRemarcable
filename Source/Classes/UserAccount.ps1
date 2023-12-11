class UserAccount : Serializable {
    [string] $FirstName
    [string] $LastName
    [mailaddress] $Email
    [string] $PhoneNumber
    [string] $EmployeeID
    [string] $CompanyBranchName
    [string] $UserGroupName
    [string] $JobTitle

    hidden $Serialization = @{
        first_name = "FirstName"
        last_name = "LastName"
        email = "Email"
        phone = "PhoneNumber"
        employee_id = "EmployeeID"
        company_branch_name = "CompanyBranchName"
        user_group_name = "UserGroupName"
        job_title = "JobTitle"
    }

    UserAccount($FirstName, $LastName, $Email) {
        $this.FirstName = $FirstName
        $this.LastName = $LastName
        $this.Email = $Email
    }

    UserAccount([hashtable] $InputTable) : base($InputTable) { }
}