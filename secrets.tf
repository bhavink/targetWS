resource "databricks_secret_scope" "_da39a3ee5e" {
}
resource "databricks_secret_scope" "acltestscope_3829792ab3" {
  name = "ACLTestScope"
  keyvault_metadata {
    resource_id = "/subscriptions/3f2e4d32-8e8d-46d6-82bc-5bb8d962328b/resourceGroups/ganeshrj-resourcegroup/providers/Microsoft.KeyVault/vaults/ganeshrj-kv"
    dns_name    = "https://ganeshrj-kv.vault.azure.net/"
  }
}
resource "databricks_secret_acl" "acltestscope_ganesh_rajagopal" {
  scope      = databricks_secret_scope.acltestscope_3829792ab3.id
  principal  = databricks_user.ganesh_rajagopal.user_name
  permission = "MANAGE"
}
resource "databricks_secret_acl" "acltestscope_ganeshrj_sqldb_readonly" {
  scope      = databricks_secret_scope.acltestscope_3829792ab3.id
  principal  = databricks_group.ganeshrj_sqldb_readonly_3427963871004739.display_name
  permission = "READ"
}
resource "databricks_secret" "clonesecret_adlsclonekey_ff5ee0be68" {
  string_value = var.string_value_clonesecret_adlsclonekey_ff5ee0be68
  scope        = databricks_secret_scope.clonesecret_fede4b351f.id
  key          = "adlsclonekey"
}
resource "databricks_secret_scope" "clonesecret_fede4b351f" {
  name = "clonesecret"
}
resource "databricks_secret_acl" "clonesecret_ganesh_rajagopal" {
  scope      = databricks_secret_scope.clonesecret_fede4b351f.id
  principal  = databricks_user.ganesh_rajagopal.user_name
  permission = "MANAGE"
}
resource "databricks_secret_scope" "dbadlsaccess_ecf2a395fd" {
  name = "dbadlsaccess"
  keyvault_metadata {
    resource_id = "/subscriptions/3f2e4d32-8e8d-46d6-82bc-5bb8d962328b/resourceGroups/ganeshrj-resourcegroup/providers/Microsoft.KeyVault/vaults/ganeshrj-kv"
    dns_name    = "https://ganeshrj-kv.vault.azure.net/"
  }
}
resource "databricks_secret_acl" "dbadlsaccess_ganesh_rajagopal" {
  scope      = databricks_secret_scope.dbadlsaccess_ecf2a395fd.id
  principal  = databricks_user.ganesh_rajagopal.user_name
  permission = "MANAGE"
}
resource "databricks_secret" "ganesh_rajagopal" {
  string_value = var.string_value_ganesh_rajagopal_databricks_com_password_f83e864a27
  scope        = databricks_secret_scope.ganesh_rajagopal.id
  key          = "password"
}
resource "databricks_secret_acl" "ganesh_rajagopal" {
  scope      = databricks_secret_scope.ganesh_rajagopal.id
  principal  = databricks_user.ganesh_rajagopal.user_name
  permission = "MANAGE"
}
resource "databricks_secret_scope" "ganesh_rajagopal" {
  name = "ganesh.rajagopal@databricks.com"
}
resource "databricks_secret_scope" "grjscopeviaapi_523ea9776c" {
  name = "grjScopeviaAPI"
}
resource "databricks_secret_scope" "grjscopeviaapi_akv_9d11065910" {
  name = "grjScopeviaAPI_AKV"
  keyvault_metadata {
    resource_id = "/subscriptions/3f2e4d32-8e8d-46d6-82bc-5bb8d962328b/resourceGroups/ganeshrj-resourcegroup/providers/Microsoft.KeyVault/vaults/ganeshrj-kv"
    dns_name    = "https://ganeshrj-kv.vault.azure.net/"
  }
}
resource "databricks_secret_acl" "grjscopeviaapi_akv_users" {
  scope      = databricks_secret_scope.grjscopeviaapi_akv_9d11065910.id
  principal  = data.databricks_group.users_3975708310395696.display_name
  permission = "MANAGE"
}
resource "databricks_secret_acl" "grjscopeviaapi_users" {
  scope      = databricks_secret_scope.grjscopeviaapi_523ea9776c.id
  principal  = data.databricks_group.users_3975708310395696.display_name
  permission = "MANAGE"
}
resource "databricks_secret_scope" "hdinsighthivems_6aa19ec252" {
  name = "hdinsighthiveMS"
  keyvault_metadata {
    resource_id = "/subscriptions/3f2e4d32-8e8d-46d6-82bc-5bb8d962328b/resourceGroups/ganeshrj-resourcegroup/providers/Microsoft.KeyVault/vaults/ganeshrj-hdi-kv"
    dns_name    = "https://ganeshrj-hdi-kv.vault.azure.net/"
  }
}
resource "databricks_secret_acl" "hdinsighthivems_ganesh_rajagopal" {
  scope      = databricks_secret_scope.hdinsighthivems_6aa19ec252.id
  principal  = databricks_user.ganesh_rajagopal.user_name
  permission = "MANAGE"
}
resource "databricks_secret_scope" "niktest_2ec8a1f021" {
  name = "NikTest"
  keyvault_metadata {
    resource_id = "/subscriptions/3f2e4d32-8e8d-46d6-82bc-5bb8d962328b/resourceGroups/ganeshrj-resourcegroup/providers/Microsoft.KeyVault/vaults/ganeshrj-kv"
    dns_name    = "https://ganeshrj-kv.vault.azure.net/"
  }
}
resource "databricks_secret_acl" "niktest_ganesh_rajagopal" {
  scope      = databricks_secret_scope.niktest_2ec8a1f021.id
  principal  = databricks_user.ganesh_rajagopal.user_name
  permission = "MANAGE"
}
resource "databricks_secret_scope" "ronguerrero_scope_a0a9fd126b" {
  name = "ronguerrero_scope"
}
resource "databricks_secret" "ronguerrero_scope_credentials_38e0bbd230" {
  string_value = var.string_value_ronguerrero_scope_credentials_38e0bbd230
  scope        = databricks_secret_scope.ronguerrero_scope_a0a9fd126b.id
  key          = "credentials"
}
resource "databricks_secret_acl" "ronguerrero_scope_ron_guerrero" {
  scope      = databricks_secret_scope.ronguerrero_scope_a0a9fd126b.id
  principal  = databricks_user.ron_guerrero.user_name
  permission = "MANAGE"
}
resource "databricks_secret_scope" "sheilatest_1491c35336" {
  name = "sheilatest"
  keyvault_metadata {
    resource_id = "/subscriptions/3f2e4d32-8e8d-46d6-82bc-5bb8d962328b/resourceGroups/ganeshrj-resourcegroup/providers/Microsoft.KeyVault/vaults/ganeshrj-kv"
    dns_name    = "https://ganeshrj-kv.vault.azure.net/"
  }
}
resource "databricks_secret_acl" "sheilatest_sheila_stewart" {
  scope      = databricks_secret_scope.sheilatest_1491c35336.id
  principal  = databricks_user.sheila_stewart.user_name
  permission = "MANAGE"
}
resource "databricks_secret_scope" "testadmin_c684ae0ba8" {
  name = "TestAdmin"
  keyvault_metadata {
    resource_id = "/subscriptions/3f2e4d32-8e8d-46d6-82bc-5bb8d962328b/resourceGroups/ganeshrj-resourcegroup/providers/Microsoft.KeyVault/vaults/ganeshrj-kv"
    dns_name    = "https://ganeshrj-kv.vault.azure.net/"
  }
}
resource "databricks_secret_acl" "testadmin_ganesh_rajagopal" {
  scope      = databricks_secret_scope.testadmin_c684ae0ba8.id
  principal  = databricks_user.ganesh_rajagopal.user_name
  permission = "MANAGE"
}
resource "databricks_secret_scope" "testagainsheila_43bc9c5d05" {
  name = "testagainsheila"
  keyvault_metadata {
    resource_id = "/subscriptions/3f2e4d32-8e8d-46d6-82bc-5bb8d962328b/resourceGroups/ganeshrj-resourcegroup/providers/Microsoft.KeyVault/vaults/ganeshrj-test-key-scope"
    dns_name    = "https://ganeshrj-test-key-scope.vault.azure.net/"
  }
}
resource "databricks_secret_acl" "testagainsheila_sheila_stewart" {
  scope      = databricks_secret_scope.testagainsheila_43bc9c5d05.id
  principal  = databricks_user.sheila_stewart.user_name
  permission = "MANAGE"
}
resource "databricks_secret_scope" "testredact_af25ce84c5" {
  name = "testRedact"
  keyvault_metadata {
    resource_id = "/subscriptions/3f2e4d32-8e8d-46d6-82bc-5bb8d962328b/resourceGroups/ganeshrj-resourcegroup/providers/Microsoft.KeyVault/vaults/ganeshrj-kv"
    dns_name    = "https://ganeshrj-kv.vault.azure.net/"
  }
}
resource "databricks_secret_acl" "testredact_ganesh_rajagopal" {
  scope      = databricks_secret_scope.testredact_af25ce84c5.id
  principal  = databricks_user.ganesh_rajagopal.user_name
  permission = "MANAGE"
}
resource "databricks_secret_scope" "testscope_5661edbae4" {
  name = "testScope"
  keyvault_metadata {
    resource_id = "/subscriptions/3f2e4d32-8e8d-46d6-82bc-5bb8d962328b/resourceGroups/ganeshrj-resourcegroup/providers/Microsoft.KeyVault/vaults/ganeshrj-kv"
    dns_name    = "https://ganeshrj-kv.vault.azure.net/"
  }
}
resource "databricks_secret" "testscope_adlsaccess_5694fd7a58" {
  string_value = var.string_value_TestSCope_adlsaccess_5694fd7a58
  scope        = databricks_secret_scope._da39a3ee5e.id
  key          = "adlsaccess"
}
resource "databricks_secret" "testscope_az_bootcamp_ganesh_kv_spn_fe_eecf8a29e4" {
  string_value = var.string_value_TestSCope_az_bootcamp_ganesh_kv_spn_fe_eecf8a29e4
  scope        = databricks_secret_scope._da39a3ee5e.id
  key          = "az-bootcamp-ganesh-kv-spn-fe"
}
resource "databricks_secret" "testscope_client_secret_cad1479700" {
  string_value = var.string_value_TestSCope_client_secret_cad1479700
  scope        = databricks_secret_scope._da39a3ee5e.id
  key          = "client-secret"
}
resource "databricks_secret" "testscope_dbprofilerclientid_523675dd29" {
  string_value = var.string_value_TestSCope_dbprofilerClientId_523675dd29
  scope        = databricks_secret_scope._da39a3ee5e.id
  key          = "dbprofilerClientId"
}
resource "databricks_secret" "testscope_dbprofilersecret_ccf2467911" {
  string_value = var.string_value_TestSCope_dbprofilerSecret_ccf2467911
  scope        = databricks_secret_scope._da39a3ee5e.id
  key          = "dbprofilerSecret"
}
resource "databricks_secret" "testscope_dbprofilertenantid_ed863a5916" {
  string_value = var.string_value_TestSCope_dbprofilerTenantId_ed863a5916
  scope        = databricks_secret_scope._da39a3ee5e.id
  key          = "dbprofilerTenantId"
}
resource "databricks_secret" "testscope_key_5af7188e56" {
  string_value = var.string_value_TestSCope_key_5af7188e56
  scope        = databricks_secret_scope._da39a3ee5e.id
  key          = "key"
}
resource "databricks_secret" "testscope_sat_token_1668791468712484_ce1727a238" {
  string_value = var.string_value_TestSCope_sat_token_1668791468712484_ce1727a238
  scope        = databricks_secret_scope._da39a3ee5e.id
  key          = "sat-token-1668791468712484"
}
resource "databricks_secret" "testscope_test_64a867df81" {
  string_value = var.string_value_TestSCope_test_64a867df81
  scope        = databricks_secret_scope._da39a3ee5e.id
  key          = "test"
}
resource "databricks_secret" "testscope_testredact_60eaaed128" {
  string_value = var.string_value_TestSCope_testRedact_60eaaed128
  scope        = databricks_secret_scope._da39a3ee5e.id
  key          = "testRedact"
}
resource "databricks_secret" "testscope_testsecrets_c0d43354b5" {
  string_value = var.string_value_TestSCope_testSecrets_c0d43354b5
  scope        = databricks_secret_scope._da39a3ee5e.id
  key          = "testSecrets"
}
resource "databricks_secret_acl" "testscope_users" {
  scope      = databricks_secret_scope._da39a3ee5e.id
  principal  = data.databricks_group.users_3975708310395696.display_name
  permission = "MANAGE"
}
resource "databricks_secret_acl" "testscope_users" {
  scope      = databricks_secret_scope.testscope_5661edbae4.id
  principal  = data.databricks_group.users_3975708310395696.display_name
  permission = "MANAGE"
}
resource "databricks_secret_scope" "testsheila_9dc4fe943c" {
  name = "Testsheila"
  keyvault_metadata {
    resource_id = "/subscriptions/3f2e4d32-8e8d-46d6-82bc-5bb8d962328b/resourceGroups/ganeshrj-resourcegroup/providers/Microsoft.KeyVault/vaults/ganeshrj-test-key-scope"
    dns_name    = "https://ganeshrj-test-key-scope.vault.azure.net/"
  }
}
resource "databricks_secret_acl" "testsheila_sheila_stewart" {
  scope      = databricks_secret_scope.testsheila_9dc4fe943c.id
  principal  = databricks_user.sheila_stewart.user_name
  permission = "MANAGE"
}
resource "databricks_secret_scope" "testsheilaagain1_aa84d79475" {
  name = "testsheilaagain1"
  keyvault_metadata {
    resource_id = "/subscriptions/3f2e4d32-8e8d-46d6-82bc-5bb8d962328b/resourceGroups/cmoon-rg/providers/Microsoft.KeyVault/vaults/cmoon-test"
    dns_name    = "https://cmoon-test.vault.azure.net/"
  }
}
resource "databricks_secret_acl" "testsheilaagain1_sheila_stewart" {
  scope      = databricks_secret_scope.testsheilaagain1_aa84d79475.id
  principal  = databricks_user.sheila_stewart.user_name
  permission = "MANAGE"
}
