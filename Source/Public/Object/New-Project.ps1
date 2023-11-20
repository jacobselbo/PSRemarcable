<#
    .SYNOPSIS
        Creates a Project Object to imported or updated

    .DESCRIPTION
        Creates a Project Object to imported or updated. This method is used to create code readability

    .PARAMETER Status
        This is represents the status of a project. Available options are "active" or "archived".

    .PARAMETER ProjectName
        This is the name of the project. Max length 200 characters.

    .PARAMETER MainJobNumber
        This is the main job number of the project. When contractor_sys_project_id is not present in Remarcable system, Remarcable will use this field to determine whether to create or update a project.

    .PARAMETER ContractorSystemProjectID
        This is your system's unique job/project ID. Remarcable uses this field to determine if you are updating an existing job or creating a new project.

    .PARAMETER ProjectManagerEmail
        This is the project manager's email address. This email address will be used to automatically add the associated account user as the owner of the project.

    .PARAMETER TaxRate
        This field stores the typical tax rate. In some cases, that means use tax. If this job is tax exempt, you can send 0.

    .PARAMETER TaxCode
        This is the main tax code used for this project.

    .PARAMETER IsJob
        Some accounting system differentiate project into job vs work order. If you are creating for a job, send this field as true.

    .PARAMETER RequirePhase
        When set to true, this field requires a foreman to fill the labor phase code before an order can be submitted.

    .PARAMETER RequireCostCode
        When set to true, this field requires a foreman to fill the material phase code before an order can be submitted.

    .PARAMETER RequireToolPhase
        When set to true, this field requires a foreman to fill the labor phase code before a tool request can be submitted.

    .PARAMETER RequireToolCostCode
        When set to true, this field requires a foreman to fill the material phase code before a tool request can be submitted.

    .PARAMETER UseLaborPhaseAsMaterialPhasePrefix
        When set to true, this field would allow part of the labor phase code to be combined with material phase code to create a joint phase code. If you don't know what this is, please set it to false.

    .PARAMETER DefaultMaterialPhasePrefix
        Each item purchased under any given project can be assigned a phase/cost code. When this field is used, a prefix will be added in front of the assigned phase/cost code.

    .PARAMETER CustomVariable1
        This field is user defined and can be found at the bottom of the project settings screen.

    .PARAMETER CustomVariable2
        This field is user defined and can be found at the bottom of the project settings screen.

    .PARAMETER MaterialPhaseCode
        This field stores a list of available material phase code. Each phase code has sub field of "name" and "code". If this field is not passed and a parent project exists, parent value will be copied over.

    .PARAMETER LaborPhaseCode
        This field stores a list of available labor phase code. Each phase code has sub field of "name" and "code".  If this field is not passed and a parent project exists, parent value will be copied over.

    .PARAMETER Address
        You can use this field to pass the project address / location.

    .PARAMETER ClientCompanyCode
        This field stores your system company code that the project belongs to. 

    .PARAMETER ProjectOwnerEmailList
        This field allows you to send an array of email addresses to be added to the project as owners. When you perform an update, the system will auto add new owners, however it will not remove existing owners automatically. You don't have to include the project_manager_email here again. However, if you did, the system will just ignore it and will not add the same person twice. If this field is not passed and a parent project exists, parent value will be copied over.

    .PARAMETER CompanyBranchID
        This field allows you to set your company branch ID at the time of creation. You can find all your branch IDs at the admin page.

    .PARAMETER IsGroup
        Indicate if a project is used as a group. When true, that means this project is a group. Default value is false.

    .PARAMETER ParentMainJobNumber
        If this project belongs to a group, this field should contain the parent group's main job number. This field cannot be used with is_group at the same time. Note: Parent project must be created from a prior API call. You can not create the parent and child on the same API call.

    .PARAMETER LumpSumExport
        Indicate the type of order and invoice export. When true, all line item details are grouped into one line.

    .PARAMETER Description
        This is a project description can be used to add supplemental information on the project as well as aid searching.

    .PARAMETER RequireWBSCode1
        When set to true, this field requires a foreman to fill the wbs code 1 before an order can be submitted.

    .PARAMETER ToolCostPONumber
        This field stores tool cost PO number for this project.

    .PARAMETER CurrentJobPONumber
        This field stores current highest used PO number for this project.

    .PARAMETER TaxExempt
        Indicate if this job is tax exempt.

    .PARAMETER AllowDirectPurchase
        When true, field user to send order directly to suppliers.
#>
Function New-Project {
    [CmdletBinding()]
    param (
        # Create/Update Project API Parameters
        [Parameter(Mandatory = $true)]
        [ValidateSet("active", "archived")]
        [string] $Status,
        [Parameter(Mandatory = $true)]
        [ValidateLength(1, 200)]
        [string] $ProjectName,
        [Parameter(Mandatory = $true)]
        [string] $MainJobNumber,

        [string] $ContractorSystemProjectID,
        [mailaddress] $ProjectManagerEmail,
        [float] $TaxRate,
        [string] $TaxCode,
        [bool] $IsJob,
        [bool] $RequirePhase,
        [bool] $RequireCostCode,
        [bool] $RequireToolPhase,
        [bool] $RequireToolCostCode,
        [bool] $UseLaborPhaseAsMaterialPhasePrefix,
        [string] $DefaultMaterialPhasePrefix,
        [string] $CustomVariable1,
        [string] $CustomVariable2,
        [string] $Description,
        [PhaseCode[]] $MaterialPhaseCode,
        [PhaseCode[]] $LaborPhaseCode,
        [Address] $Address,
        [string] $ClientCompanyCode,
        [mailaddress[]] $ProjectOwnerEmailList,
        [int] $CompanyBranchID,
        [bool] $IsGroup,
        [string] $ParentMainJobNumber,
        [bool] $LumpSumExport,

        # Bulk Import Parameters
        [bool] $RequireWBSCode1,
        [string] $ToolCostPONumber,
        [int] $CurrentJobPONumber,
        [bool] $TaxExempt,
        [bool] $AllowDirectPurchase
    )
    Process {
        $Project = [Project]::new($Status, $ProjectName, $MainJobNumber)

        $PSBoundParameters.Keys.ForEach{
            $Project.$_ = $PSBoundParameters[$_]
        }

        return $Project
    }
}