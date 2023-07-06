resource "databricks_user" "abraham_pabbathi" {
  user_name = "abraham.pabbathi@databricks.com"
  force     = true
}
resource "databricks_user" "antonio_irizarry" {
  workspace_access      = true
  user_name             = "antonio.irizarry@databricks.com"
  force                 = true
  databricks_sql_access = true
  allow_cluster_create  = true
}
resource "databricks_user" "bhavin_kukadia" {
  user_name = "bhavin.kukadia@databricks.com"
  force     = true
}
resource "databricks_user" "bruce_nelson" {
  user_name = "bruce.nelson@databricks.com"
  force     = true
}
resource "databricks_user" "chenqin_xu" {
  user_name = "chenqin.xu@databricks.com"
  force     = true
}
resource "databricks_user" "ganesh_rajagopal" {
  user_name             = "ganesh.rajagopal@databricks.com"
  force                 = true
  databricks_sql_access = true
  allow_cluster_create  = true
}
resource "databricks_service_principal" "ganeshrj_hdpmi_adf_user_assigned_mi_8442090486855365" {
  force                = true
  display_name         = "ganeshrj-hdpmi--adf_user_assigned_mi"
  application_id       = "c36f3499-b898-404b-9af9-a9404038e17b"
  allow_cluster_create = true
  active               = true
}
resource "databricks_service_principal" "ganeshrj_mi_adf_appl_id_1336238699279333" {
  force                = true
  display_name         = "ganeshrj-mi-adf_appl_id"
  application_id       = "a95eafe4-bdf2-4342-8214-61fe5dbc5bc7"
  allow_cluster_create = true
  active               = true
}
resource "databricks_service_principal" "ganeshrj_mi_adf_test_2708737882166954" {
  workspace_access      = true
  force                 = true
  display_name          = "ganeshrj_mi_adf_test"
  databricks_sql_access = true
  application_id        = "45b62b5a-053e-4ac4-a716-9328baac7b1c"
  allow_cluster_create  = true
  active                = true
}
resource "databricks_service_principal" "ganeshrj_mi_adf_user_assigned_mi_213204400443677" {
  workspace_access      = true
  force                 = true
  display_name          = "ganeshrj-mi-adf_user_assigned_mi"
  databricks_sql_access = true
  application_id        = "ed56409e-75e5-44ed-834e-d32502a74e90"
  allow_cluster_create  = true
  active                = true
}
resource "databricks_service_principal" "ganeshrj_postman_sp_5010665359431307" {
  force          = true
  display_name   = "ganeshrj_postman_sp"
  application_id = "c5bc5922-3dfe-4ae9-8e9b-e4052686ea30"
  active         = true
}
resource "databricks_service_principal" "ganeshrj_uc_ua_mi_2248766594429473" {
  workspace_access      = true
  force                 = true
  display_name          = "ganeshrj_uc_ua_mi"
  databricks_sql_access = true
  application_id        = "6f5dbd34-29c0-46c2-a69e-2210fb9d573e"
  allow_cluster_create  = true
  active                = true
}
resource "databricks_user" "glenn_wiebe" {
  user_name = "glenn.wiebe@databricks.com"
  force     = true
}
resource "databricks_user" "hao_wang" {
  workspace_access     = true
  user_name            = "hao.wang@databricks.com"
  force                = true
  allow_cluster_create = true
}
resource "databricks_user" "kyle_hale" {
  user_name = "kyle.hale@databricks.com"
  force     = true
}
resource "databricks_user" "leo_furlong" {
  workspace_access     = true
  user_name            = "leo.furlong@databricks.com"
  force                = true
  allow_cluster_create = true
}
resource "databricks_user" "neil_best" {
  user_name = "neil.best@databricks.com"
  force     = true
}
resource "databricks_user" "nikhil_gupta" {
  workspace_access = true
  user_name        = "nikhil.gupta@databricks.com"
  force            = true
}
resource "databricks_user" "qing_sun" {
  user_name = "qing.sun@databricks.com"
  force     = true
}
resource "databricks_service_principal" "r7929d243e0d" {
  force          = true
  application_id = "74249d51-9586-49ed-8973-1c01509d63e8"
  active         = true
}
resource "databricks_user" "ravishankar_rajalingam" {
  user_name             = "ravishankar.rajalingam@databricks.com"
  force                 = true
  databricks_sql_access = true
}
resource "databricks_service_principal" "rd56594fe3ad" {
  force          = true
  application_id = "2521a70b-5270-4c3f-8c54-bea2cb71b409"
  active         = true
}
resource "databricks_user" "ron_guerrero" {
  user_name = "ron.guerrero@databricks.com"
  force     = true
}
resource "databricks_service_principal" "sat_sp_3068023934228352" {
  force          = true
  display_name   = "sat_sp"
  application_id = "e06da8c0-f548-4a1a-bb68-6eaa3b26babc"
  active         = true
}
resource "databricks_user" "sheila_stewart" {
  workspace_access      = true
  user_name             = "sheila.stewart@databricks.com"
  force                 = true
  databricks_sql_access = true
}
resource "databricks_user" "sumit_prakash" {
  user_name = "sumit.prakash@databricks.com"
  force     = true
}
resource "databricks_user" "suresh_matlapudi" {
  user_name = "suresh.matlapudi@databricks.com"
  force     = true
}
resource "databricks_service_principal" "unity_west_4705730961836604" {
  force                = true
  display_name         = "unity_west"
  application_id       = "8bcbae27-6270-439d-84bb-03effa57d8a8"
  allow_cluster_create = true
  active               = true
}
resource "databricks_user" "venkata_wunnava" {
  user_name = "venkata.wunnava@databricks.com"
  force     = true
}
resource "databricks_user" "william_braccialli" {
  user_name             = "william.braccialli@databricks.com"
  force                 = true
  databricks_sql_access = true
}
resource "databricks_user" "zafer_bilaloglu" {
  user_name = "zafer.bilaloglu@databricks.com"
  force     = true
}
