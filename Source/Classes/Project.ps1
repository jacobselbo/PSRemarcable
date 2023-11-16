class Project {
    # Create/Update Project API Parameters
    [string] $Status
    [string] $ProjectName
    [string] $MainJobNumber
    [string] $ContractorSystemProjectID
    [mailaddress] $ProjectManagerEmail
    [float] $TaxRate
    [string] $TaxCode
    [bool] $IsJob
    [bool] $RequirePhase
    [bool] $RequireCostCode
    [bool] $RequireToolPhase
    [bool] $RequireToolCostCode
    [bool] $UseLaborPhaseAsMaterialPhasePrefix
    [string] $DefaultMaterialPhasePrefix
    [string] $CustomVariable1
    [string] $CustomVariable2
    [string] $Description
    [PhaseCode[]] $MaterialPhaseCode
    [PhaseCode[]] $LaborPhaseCode
    [Address] $Address
    [string] $ClientCompanyCode
    [mailaddress[]] $ProjectOwnerEmailList
    [int] $CompanyBranchID
    [bool] $IsGroup
    [string] $ParentMainJobNumber
    [bool] $LumpSumExport

    # Bulk Import Parameters
    [bool] $RequireWBSCode1
    [string] $ToolCostPONumber
    [int] $CurrentJobPONumber
    [bool] $TaxExempt
    [bool] $AllowDirectPurchase

    hidden $Serialization = @{
        status = "Status"
        project_name = "ProjectName"
        main_job_num = "MainJobNumber"
        contractor_sys_project_id = "ContractorSystemProjectID"
        project_manager_email = "ProjectManagerEmail"
        tax_rate = "TaxRate"
        tax_code = "TaxCode"
        is_job = "IsJob"
        require_phase = "RequirePhase"
        require_cost_code = "RequireCostCode"
        require_tool_phase = "RequireToolPhase"
        require_tool_cost_code = "RequireToolCostCode"
        use_labor_phase_as_material_phase_prefix = "UseLaborPhaseAsMaterialPhasePrefix"
        default_material_phase_prefix = "DefaultMaterialPhasePrefix"
        custom_var_1 = "CustomVariable1"
        custom_var_2 = "CustomVariable2"
        description = "Description"
        client_company_code = "ClientCompanyCode"
        project_owner_email_list = "ProjectOwnerEmailList"
        company_branch_id = "CompanyBranchID"
        is_group = "IsGroup"
        parent_main_job_num = "ParentMainJobNumber"
        lump_sum_export = "LumpSumExport"
        material_phase_code = "MaterialPhaseCode"
        labor_phase_code = "LaborPhaseCode"
        address = "Address"

        require_wbs_code_1 = "RequireWBSCode1"
        tool_cost_po_number = "ToolCostPONumber"
        current_job_po_number = "CurrentJobPONumber"
        tax_exempt = "TaxExempt"
        allow_direct_pruchase = "AllowDirectPurchase"
    }

    Project($Status, $ProjectName, $MainJobNumber) {
        $this.Status = $Status
        $this.ProjectName = $ProjectName
        $this.MainJobNumber = $MainJobNumber
    }

    Project($InputTable) {
        foreach ($Row in $InputTable.GetEnumerator()) {
            $SeralizedName = $Row.Name
            $ClassName = $this.Serialization.$SeralizedName
            $InputValue = $Row.Value

            if ($SeralizedName -eq "material_phase_code" -or $SeralizedName -eq "labor_phase_code") {
                $this.$ClassName = @($InputValue | ForEach-Object { [PhaseCode]::new($_) })
            } elseif ($SeralizedName -eq "address") {
                $this.$ClassName = [Address]::new($InputValue)
            } else {
                $this.$ClassName = $InputValue
            }
        }
    }

    [hashtable] Seralize() {
        $Result = @{}

        foreach ($Row in $this.Serialization.GetEnumerator()) {
            if ($null -ne $this.($Row.Value)) {
                $SeralizedName = $Row.Name
                $ClassName = $Row.Value

                if ($SeralizedName -eq "material_phase_code" -or $SeralizedName -eq "labor_phase_code") {
                    $Result.$SeralizedName = @($this.$ClassName | ForEach-Object {$_.Seralize() })
                } elseif ($SeralizedName -eq "address") {
                    $Result.$SeralizedName = $this.$ClassName.Seralize()
                } else {
                    $Result.$SeralizedName = $this.$ClassName
                }
            }
        }

        return $Result
    }
}