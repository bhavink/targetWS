data "databricks_group" "admins_2774833133357283" {
  display_name = "admins"
}
resource "databricks_group_member" "admins_2774833133357283_2521a70b_5270_4c3f_8c54_bea2cb71b409" {
  member_id = databricks_service_principal.rd56594fe3ad.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_74249d51_9586_49ed_8973_1c01509d63e8" {
  member_id = databricks_service_principal.r7929d243e0d.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_abraham_pabbathi" {
  member_id = databricks_user.abraham_pabbathi.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_antonio_irizarry" {
  member_id = databricks_user.antonio_irizarry.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_bhavin_kukadia" {
  member_id = databricks_user.bhavin_kukadia.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_bruce_nelson" {
  member_id = databricks_user.bruce_nelson.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_chenqin_xu" {
  member_id = databricks_user.chenqin_xu.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_ganesh_rajagopal" {
  member_id = databricks_user.ganesh_rajagopal.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_ganeshrj_mi_adf_test" {
  member_id = databricks_service_principal.ganeshrj_mi_adf_test_2708737882166954.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_ganeshrj_mi_adf_user_assigned_mi" {
  member_id = databricks_service_principal.ganeshrj_mi_adf_user_assigned_mi_213204400443677.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_ganeshrj_postman_sp" {
  member_id = databricks_service_principal.ganeshrj_postman_sp_5010665359431307.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_ganeshrj_uc_ua_mi" {
  member_id = databricks_service_principal.ganeshrj_uc_ua_mi_2248766594429473.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_glenn_wiebe" {
  member_id = databricks_user.glenn_wiebe.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_hao_wang" {
  member_id = databricks_user.hao_wang.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_kyle_hale" {
  member_id = databricks_user.kyle_hale.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_leo_furlong" {
  member_id = databricks_user.leo_furlong.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_neil_best" {
  member_id = databricks_user.neil_best.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_nikhil_gupta" {
  member_id = databricks_user.nikhil_gupta.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_qing_sun" {
  member_id = databricks_user.qing_sun.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_ravishankar_rajalingam" {
  member_id = databricks_user.ravishankar_rajalingam.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_ron_guerrero" {
  member_id = databricks_user.ron_guerrero.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_sat_sp" {
  member_id = databricks_service_principal.sat_sp_3068023934228352.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_sheila_stewart" {
  member_id = databricks_user.sheila_stewart.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_sumit_prakash" {
  member_id = databricks_user.sumit_prakash.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_suresh_matlapudi" {
  member_id = databricks_user.suresh_matlapudi.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_venkata_wunnava" {
  member_id = databricks_user.venkata_wunnava.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_william_gui_braccialli" {
  member_id = databricks_user.william_braccialli.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group_member" "admins_2774833133357283_zafer_bilaloglu" {
  member_id = databricks_user.zafer_bilaloglu.id
  group_id  = data.databricks_group.admins_2774833133357283.id
}
resource "databricks_group" "ganeshrj_sqldb_readonly_3427963871004739" {
  force        = true
  external_id  = "e887dc9e-ed1c-4e35-adb1-25f69d712885"
  display_name = "ganeshrj_sqldb_readonly"
}
resource "databricks_group_member" "ganeshrj_sqldb_readonly_3427963871004739_sheila_stewart" {
  member_id = databricks_user.sheila_stewart.id
  group_id  = databricks_group.ganeshrj_sqldb_readonly_3427963871004739.id
}
resource "databricks_group" "ganeshrj_sqldbadmin_3239514562238688" {
  force        = true
  external_id  = "64ff5ca6-60de-4b2c-883d-a10fc8c51a14"
  display_name = "ganeshrj_sqlDBAdmin"
}
resource "databricks_group_member" "ganeshrj_sqldbadmin_3239514562238688_ganesh_rajagopal" {
  member_id = databricks_user.ganesh_rajagopal.id
  group_id  = databricks_group.ganeshrj_sqldbadmin_3239514562238688.id
}
resource "databricks_group_member" "ganeshrj_sqldbadmin_3239514562238688_nikhil_gupta" {
  member_id = databricks_user.nikhil_gupta.id
  group_id  = databricks_group.ganeshrj_sqldbadmin_3239514562238688.id
}
resource "databricks_group" "mangedidentities_790905299331875" {
  workspace_access     = true
  force                = true
  display_name         = "mangedIdentities"
  allow_cluster_create = true
}
resource "databricks_group_member" "mangedidentities_790905299331875_ganeshrj_hdpmi_adf_user_assigned_mi" {
  member_id = databricks_service_principal.ganeshrj_hdpmi_adf_user_assigned_mi_8442090486855365.id
  group_id  = databricks_group.mangedidentities_790905299331875.id
}
resource "databricks_group_member" "mangedidentities_790905299331875_ganeshrj_mi_adf_appl_id" {
  member_id = databricks_service_principal.ganeshrj_mi_adf_appl_id_1336238699279333.id
  group_id  = databricks_group.mangedidentities_790905299331875.id
}
resource "databricks_group_member" "mangedidentities_790905299331875_ganeshrj_mi_adf_user_assigned_mi" {
  member_id = databricks_service_principal.ganeshrj_mi_adf_user_assigned_mi_213204400443677.id
  group_id  = databricks_group.mangedidentities_790905299331875.id
}
resource "databricks_group" "metastore_admin_users_851247659650529" {
  force        = true
  display_name = "metastore-admin-users"
}
resource "databricks_group_member" "metastore_admin_users_851247659650529_ganesh_rajagopal" {
  member_id = databricks_user.ganesh_rajagopal.id
  group_id  = databricks_group.metastore_admin_users_851247659650529.id
}
resource "databricks_group" "spentitlements_459335653644651" {
  workspace_access      = true
  force                 = true
  display_name          = "SPEntitlements"
  databricks_sql_access = true
  allow_cluster_create  = true
}
resource "databricks_group_member" "spentitlements_459335653644651_unity_west" {
  member_id = databricks_service_principal.unity_west_4705730961836604.id
  group_id  = databricks_group.spentitlements_459335653644651.id
}
data "databricks_group" "users_3975708310395696" {
  display_name = "users"
}
