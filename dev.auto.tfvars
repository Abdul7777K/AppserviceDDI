create_resource_group = true
resource_group_name   = "rg-dev-tfpoc-eastus2-001"
location              = "eastus"
app_service_name      = "site-dev-tfpoc-eastus2-001"
app_service_plan_name = "asp-dev-tfpoc-eastus2-001"
sku_name              = "S1"
os_type               = "Windows"

enable_client_affinity       = true
log_analytics_workspace_name = "log-dev-tfpoc-eastus2-001"
app_insights_name            = "appi-dev-tfpoc-eastus2-001"
site_config = {
  always_on                 = false
  dotnet_framework_version  = "v4.0"
  ftps_state                = "FtpsOnly"
  managed_pipeline_mode     = "Integrated"
  use_32_bit_worker_process = true
  windows_fx_version        = "DOTNETCORE|2.1"
}

app_settings = {
  APPINSIGHTS_PROFILERFEATURE_VERSION             = "1.0.0"
  APPINSIGHTS_SNAPSHOTFEATURE_VERSION             = "1.0.0"
  DiagnosticServices_EXTENSION_VERSION            = "~3"
  InstrumentationEngine_EXTENSION_VERSION         = "disabled"
  SnapshotDebugger_EXTENSION_VERSION              = "disabled"
  XDT_MicrosoftApplicationInsights_BaseExtensions = "disabled"
  XDT_MicrosoftApplicationInsights_Java           = "1"
  XDT_MicrosoftApplicationInsights_Mode           = "recommended"
  XDT_MicrosoftApplicationInsights_NodeJS         = "1"
  XDT_MicrosoftApplicationInsights_PreemptSdk     = "disabled"
}

tags = {
  Environment          = "dev"
  Business_Criticality = "low"
  Owner                = "kundan.patil"
  Workload             = "Terraform POC"
  Operations_Team      = "PDE - Platform Engineering"
}