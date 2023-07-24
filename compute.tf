resource "databricks_cluster" "a_simple_cluster_0208_192534_motif544" {
  spark_version = "9.1.x-scala2.12"
  spark_env_vars = {
    SPARKPASSWORD = "\"This is atest Password\""
    TEST_VARIABLE = "\"This is a test\""
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled"                                               = "true"
    "spark.hadoop.fs.azure.account.auth.type.ganehsrjuc.dfs.core.windows.net"              = "OAuth"
    "spark.hadoop.fs.azure.account.oauth.provider.type.ganehsrjuc.dfs.core.windows.net"    = "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider"
    "spark.hadoop.fs.azure.account.oauth2.client.endpoint.ganehsrjuc.dfs.core.windows.net" = "https://login.microsoftonline.com/9f37a392-f0ae-4280-9796-f1864a10effc/oauth2/token"
    "spark.hadoop.fs.azure.account.oauth2.client.id.ganehsrjuc.dfs.core.windows.net"       = "{{secrets/TestSCope/dbprofilerClientID}}"
    "spark.hadoop.fs.azure.account.oauth2.client.secret.ganehsrjuc.dfs.core.windows.net"   = "{{secrets/TestSCope/dbprofilerSecret}}"
  }
  node_type_id        = "Standard_DS3_v2"
  is_pinned           = true
  enable_elastic_disk = true
  cluster_name        = "A Simple Cluster"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autoscale {
    min_workers = 1
    max_workers = 2
  }
}
resource "databricks_cluster" "api_metastore_work_leave_me_alone_0706_014818_gr89xjnv" {
  spark_version = "10.4.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
  }
  num_workers         = 1
  node_type_id        = "Standard_D8_v3"
  enable_elastic_disk = true
  cluster_name        = "API_Metastore_Work_Leave_Me_Alone"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 120
}
resource "databricks_cluster" "api_table_acl_work_leave_me_alone_0706_183141_p9kwvotg" {
  spark_version = "10.4.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.acl.dfAclsEnabled"     = "true"
    "spark.databricks.cluster.profile"       = "serverless"
    "spark.databricks.delta.preview.enabled" = "true"
    "spark.databricks.repl.allowedLanguages" = "python,sql"
  }
  num_workers         = 1
  node_type_id        = "Standard_DS3_v2"
  enable_elastic_disk = true
  cluster_name        = "API_Table_ACL_Work_Leave_Me_Alone"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 120
}
resource "databricks_cluster" "demo_cluster_0323_170018_burs288" {
  spark_version = "11.3.x-scala2.12"
  spark_conf = {
    "fs.permissions.umask-mode"              = "002"
    "spark.databricks.delta.preview.enabled" = "true"
  }
  runtime_engine   = "STANDARD"
  is_pinned        = true
  instance_pool_id = databricks_instance_pool.vw_etl_pool.id
  custom_tags = {
    Comments = "For testing Tags"
    Purpose  = "demo"
  }
  cluster_name = "demo_cluster"
  autoscale {
    min_workers = 1
    max_workers = 2
  }
}
resource "databricks_cluster" "ganeshrj_msal_sqldb_test_0120_224353_toffy919" {
  spark_version = "9.1.x-scala2.12"
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
  }
  node_type_id        = "Standard_DS3_v2"
  is_pinned           = true
  enable_elastic_disk = true
  cluster_name        = "ganeshrj_msal_sqldb_test"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 120
  autoscale {
    min_workers = 1
    max_workers = 2
  }
}
resource "databricks_cluster" "ganeshrj_test_hdp26_0823_192001_pipit316" {
  spark_version = "5.5.x-scala2.11"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
    "spark.hadoop.hive.metastore.uris"       = "thrift://hdp-c1.ganeshrj.com:9083"
    "spark.sql.hive.metastore.jars"          = "builtin"
    "spark.sql.hive.metastore.version"       = "1.2.1"
  }
  num_workers  = 2
  node_type_id = "Standard_DS3_v2"
  is_pinned    = true
  init_scripts {
    dbfs {
      destination = "dbfs:/databricks/ganeshrj/init_scripts/hdfs-init-setup.sh"
    }
  }
  enable_elastic_disk = true
  cluster_name        = "ganeshrj_test_hdp26"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 120
}
resource "databricks_cluster" "ganeshrj_test_hdp30_0823_191217_grief187" {
  spark_version = "7.4.x-scala2.12"
  spark_conf = {
    "spark.databricks.delta.preview.enabled"                      = "true"
    "spark.hadoop.hive.metastore.uris"                            = "thrift://hdp30.ganeshrj.com:9083"
    "spark.sql.hive.metastore.jars"                               = "builtin"
    "spark.sql.hive.metastore.schema.verification"                = "false"
    "spark.sql.hive.metastore.schema.verification.record.version" = "false"
    "spark.sql.hive.metastore.version"                            = "2.3.7"
  }
  num_workers  = 2
  node_type_id = "Standard_DS3_v2"
  is_pinned    = true
  init_scripts {
    dbfs {
      destination = "dbfs:/databricks/ganeshrj/init_scripts/hdfs30-init.bash"
    }
  }
  enable_elastic_disk = true
  cluster_name        = "ganeshrj_test_hdp30"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 120
}
resource "databricks_cluster" "ganeshrj_test_hdp30_no_thrift_1120_003235_hies621" {
  spark_version = "8.4.x-scala2.12"
  spark_conf = {
    "spark.databricks.delta.preview.enabled"                      = "true"
    "spark.hadoop.javax.jdo.option.ConnectionDriverName"          = "org.postgresql.Driver"
    "spark.hadoop.javax.jdo.option.ConnectionPassword"            = "hive"
    "spark.hadoop.javax.jdo.option.ConnectionURL"                 = "jdbc:postgresql://hdp301.ganeshrj.com:5432/hive"
    "spark.hadoop.javax.jdo.option.ConnectionUserName"            = "hive"
    "spark.sql.hive.metastore.jars"                               = "builtin"
    "spark.sql.hive.metastore.schema.verification"                = "false"
    "spark.sql.hive.metastore.schema.verification.record.version" = "false"
    "spark.sql.hive.metastore.version"                            = "2.3.7"
  }
  node_type_id = "Standard_DS3_v2"
  is_pinned    = true
  init_scripts {
    dbfs {
      destination = "dbfs:/databricks/ganeshrj/init_scripts/hdfs30-init-2.bash"
    }
  }
  enable_elastic_disk = true
  cluster_name        = "ganeshrj_test_hdp30_no_thrift"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 180
  autoscale {
    min_workers = 1
    max_workers = 8
  }
}
resource "databricks_cluster" "ganeshrj_uc_test_0120_183235_6ubrqb4i" {
  spark_version = "10.1.x-scala2.12"
  spark_conf = {
    "spark.databricks.delta.preview.enabled"            = "true"
    "spark.databricks.passthrough.enabled"              = "true"
    "spark.databricks.sql.initial.catalog.name"         = "hive_metastore"
    "spark.databricks.unityCatalog.enabled"             = "true"
    "spark.databricks.unityCatalog.enforce.permissions" = "false"
  }
  single_user_name    = databricks_user.ganesh_rajagopal.user_name
  node_type_id        = "Standard_DS3_v2"
  is_pinned           = true
  enable_elastic_disk = true
  cluster_name        = "ganeshrj_uc_test"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 30
  autoscale {
    min_workers = 1
    max_workers = 2
  }
}
resource "databricks_cluster" "hbase_de_new_0518_011236_easy939" {
  spark_version = "7.5.x-scala2.12"
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
  }
  num_workers         = 2
  node_type_id        = "Standard_DS3_v2"
  is_pinned           = true
  enable_elastic_disk = true
  cluster_name        = "hbase_de_new"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 120
}
resource "databricks_cluster" "hbase_demo_0510_153436_liven246" {
  spark_version = "8.1.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
  }
  node_type_id        = "Standard_DS3_v2"
  is_pinned           = true
  enable_elastic_disk = true
  cluster_name        = "hbase_demo"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 30
  autoscale {
    max_workers = 2
  }
}
resource "databricks_cluster" "iot_demo_cluster_0705_214821_afar123" {
  spark_version = "10.4.x-scala2.12"
  spark_env_vars = {
    WSFS_ENABLE = "true"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
  }
  runtime_engine      = "STANDARD"
  node_type_id        = "Standard_DS3_v2"
  is_pinned           = true
  enable_elastic_disk = true
  data_security_mode  = "LEGACY_PASSTHROUGH"
  cluster_name        = "IoT Demo Cluster"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 30
  autoscale {
    min_workers = 1
    max_workers = 8
  }
}
resource "databricks_cluster" "kerb_hdp31_731_cluster_0628_174438_8ye5sd19" {
  spark_version = "7.3.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.cluster.profile"                            = "singleNode"
    "spark.databricks.delta.preview.enabled"                      = "true"
    "spark.driver.extraJavaOptions"                               = "-Dsun.security.krb5.debug=true -Djava.security.krb5.conf=/dbfs/databricks/ganeshrj/kerb_init_v1/krb5.conf  -Dkeytab.file=/dbfs/databricks/ganeshrj/kerb_init_v1/hdfs_headless.keytab -Djavax.security.auth.useSubjectCredsOnly=false"
    "spark.executor.extraJavaOptions"                             = "-Dsun.security.krb5.debug=true -Djava.security.krb5.conf=/dbfs/databricks/ganeshrj/kerb_init_v1/krb5.conf  -Dkeytab.file=/dbfs/databricks/ganeshrj/kerb_init_v1/hdfs_headless.keytab -Djavax.security.auth.useSubjectCredsOnly=false"
    "spark.hadoop.javax.jdo.option.ConnectionDriverName"          = "org.mariadb.jdbc.Driver"
    "spark.hadoop.javax.jdo.option.ConnectionPassword"            = "hive"
    "spark.hadoop.javax.jdo.option.ConnectionURL"                 = "jdbc:mysql://kerbhdp31.ganeshrj.com/hive1"
    "spark.hadoop.javax.jdo.option.ConnectionUserName"            = "hive"
    "spark.master"                                                = "local[*, 4]"
    "spark.sql.hive.metastore.jars"                               = "maven"
    "spark.sql.hive.metastore.schema.verification"                = "false"
    "spark.sql.hive.metastore.schema.verification.record.version" = "false"
    "spark.sql.hive.metastore.version"                            = "3.1.1"
  }
  runtime_engine = "STANDARD"
  node_type_id   = "Standard_DS4_v2"
  init_scripts {
    dbfs {
      destination = "dbfs:/databricks/ganeshrj/kerb_init_v1/kerb-hdfs-init.bash"
    }
  }
  enable_elastic_disk = true
  data_security_mode  = "NONE"
  custom_tags = {
    ResourceClass = "SingleNode"
  }
  cluster_name = "kerb_hdp31_731_cluster"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 120
}
resource "databricks_cluster" "kerb_hdp31_73_cluster_0831_194301_web21" {
  spark_version = "7.3.x-scala2.12"
  spark_env_vars = {
    DATABRICKS_HADOOP_UGI_PROXY_USER_ENABLED = "true"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled"                      = "true"
    "spark.driver.extraJavaOptions"                               = "-Dsun.security.krb5.debug=true -Djava.security.krb5.conf=/dbfs/databricks/ganeshrj/kerb_init_v1/krb5.conf  -Dkeytab.file=/dbfs/databricks/ganeshrj/kerb_init_v1/hdfs_headless.keytab -Djavax.security.auth.useSubjectCredsOnly=false"
    "spark.executor.extraJavaOptions"                             = "-Dsun.security.krb5.debug=true -Djava.security.krb5.conf=/dbfs/databricks/ganeshrj/kerb_init_v1/krb5.conf  -Dkeytab.file=/dbfs/databricks/ganeshrj/kerb_init_v1/hdfs_headless.keytab -Djavax.security.auth.useSubjectCredsOnly=false"
    "spark.hadoop.javax.jdo.option.ConnectionDriverName"          = "org.mariadb.jdbc.Driver"
    "spark.hadoop.javax.jdo.option.ConnectionPassword"            = "hive"
    "spark.hadoop.javax.jdo.option.ConnectionURL"                 = "jdbc:mysql://kerbhdp31.ganeshrj.com/hive1"
    "spark.hadoop.javax.jdo.option.ConnectionUserName"            = "hive"
    "spark.sql.hive.metastore.jars"                               = "maven"
    "spark.sql.hive.metastore.schema.verification"                = "false"
    "spark.sql.hive.metastore.schema.verification.record.version" = "false"
    "spark.sql.hive.metastore.version"                            = "3.1.1"
  }
  node_type_id = "Standard_DS3_v2"
  is_pinned    = true
  init_scripts {
    dbfs {
      destination = "dbfs:/databricks/ganeshrj/kerb_init_v1/kerb-hdfs-init.bash"
    }
  }
  enable_elastic_disk = true
  cluster_name        = "kerb_hdp31_73_cluster"
  cluster_log_conf {
    dbfs {
      destination = "dbfs:/cluster-logs"
    }
  }
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "SPOT_WITH_FALLBACK_AZURE"
  }
  autotermination_minutes = 120
  autoscale {
    min_workers = 1
    max_workers = 2
  }
}
resource "databricks_cluster" "kerb_hdp31_cluster_jdbc_0128_163851_ue0c2r0f" {
  spark_version = "7.3.x-scala2.12"
  spark_env_vars = {
    DATABRICKS_HADOOP_UGI_PROXY_USER_ENABLED = "true"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
    "spark.driver.extraJavaOptions"          = "-Dsun.security.krb5.debug=true -Djava.security.krb5.conf=/dbfs/databricks/ganeshrj/kerb_init_v1/krb5.conf  -Dkeytab.file=/dbfs/databricks/ganeshrj/kerb_init_v1/hdfs_headless.keytab -Djavax.security.auth.useSubjectCredsOnly=false"
    "spark.executor.extraJavaOptions"        = "-Dsun.security.krb5.debug=true -Djava.security.krb5.conf=/dbfs/databricks/ganeshrj/kerb_init_v1/krb5.conf  -Dkeytab.file=/dbfs/databricks/ganeshrj/kerb_init_v1/hdfs_headless.keytab -Djavax.security.auth.useSubjectCredsOnly=false"
  }
  runtime_engine = "STANDARD"
  node_type_id   = "Standard_DS3_v2"
  is_pinned      = true
  init_scripts {
    dbfs {
      destination = "dbfs:/databricks/ganeshrj/kerb_init_v1/kerb-hdfs-init.bash"
    }
  }
  enable_elastic_disk = true
  cluster_name        = "kerb_hdp31_cluster_jdbc"
  cluster_log_conf {
    dbfs {
      destination = "dbfs:/cluster-logs"
    }
  }
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "SPOT_WITH_FALLBACK_AZURE"
  }
  autoscale {
    min_workers = 1
    max_workers = 2
  }
}
resource "databricks_cluster" "kerb_hdp31_cluster_sn_0901_225646_loaf897" {
  spark_version = "7.3.x-scala2.12"
  spark_env_vars = {
    DATABRICKS_HADOOP_UGI_PROXY_USER_ENABLED = "true"
  }
  spark_conf = {
    "spark.databricks.cluster.profile"                            = "singleNode"
    "spark.databricks.delta.preview.enabled"                      = "true"
    "spark.driver.extraJavaOptions"                               = "-Dsun.security.krb5.debug=true -Djava.security.krb5.conf=/dbfs/databricks/ganeshrj/kerb_init_v1/krb5.conf  -Dkeytab.file=/dbfs/databricks/ganeshrj/kerb_init_v1/hdfs_headless.keytab -Djavax.security.auth.useSubjectCredsOnly=false -Djava.security.debug=gssloginconfig,configfile,configparser,logincontext"
    "spark.executor.extraJavaOptions"                             = "-Dsun.security.krb5.debug=true -Djava.security.krb5.conf=/dbfs/databricks/ganeshrj/kerb_init_v1/krb5.conf  -Dkeytab.file=/dbfs/databricks/ganeshrj/kerb_init_v1/hdfs_headless.keytab -Djavax.security.auth.useSubjectCredsOnly=false -Djava.security.debug=gssloginconfig,configfile,configparser,logincontext"
    "spark.hadoop.dfs.namenode.kerberos.principal"                = "hdfs-kerbhdp31@GANESHRJ.COM"
    "spark.hadoop.javax.jdo.option.ConnectionDriverName"          = "org.mariadb.jdbc.Driver"
    "spark.hadoop.javax.jdo.option.ConnectionPassword"            = "hive"
    "spark.hadoop.javax.jdo.option.ConnectionURL"                 = "jdbc:mysql://kerbhdp31.ganeshrj.com/hive1"
    "spark.hadoop.javax.jdo.option.ConnectionUserName"            = "hive"
    "spark.master"                                                = "local[*, 4]"
    "spark.sql.hive.metastore.jars"                               = "maven"
    "spark.sql.hive.metastore.schema.verification"                = "false"
    "spark.sql.hive.metastore.schema.verification.record.version" = "false"
    "spark.sql.hive.metastore.version"                            = "3.1.1"
  }
  runtime_engine = "STANDARD"
  node_type_id   = "Standard_DS3_v2"
  is_pinned      = true
  init_scripts {
    dbfs {
      destination = "dbfs:/databricks/ganeshrj/kerb_init_v1/kerb-hdfs-init.bash"
    }
  }
  enable_elastic_disk = true
  data_security_mode  = "NONE"
  custom_tags = {
    ResourceClass = "SingleNode"
  }
  cluster_name = "kerb_hdp31_cluster_SN"
  cluster_log_conf {
    dbfs {
      destination = "dbfs:/cluster-logs/kerb/"
    }
  }
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 120
}
resource "databricks_cluster" "kerb_hdp31_cluster_std_0902_145639_toil185" {
  spark_version = "6.4.x-esr-scala2.11"
  spark_env_vars = {
    DATABRICKS_HADOOP_UGI_PROXY_USER_ENABLED = "true"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled"                      = "true"
    "spark.driver.extraJavaOptions"                               = "-Dsun.security.krb5.debug=true -Djava.security.krb5.conf=/dbfs/databricks/ganeshrj/kerb_init_v1/krb5.conf  -Dkeytab.file=/dbfs/databricks/ganeshrj/kerb_init_v1/hdfs_headless.keytab -Djavax.security.auth.useSubjectCredsOnly=false"
    "spark.executor.extraJavaOptions"                             = "-Dsun.security.krb5.debug=true -Djava.security.krb5.conf=/dbfs/databricks/ganeshrj/kerb_init_v1/krb5.conf  -Dkeytab.file=/dbfs/databricks/ganeshrj/kerb_init_v1/hdfs_headless.keytab -Djavax.security.auth.useSubjectCredsOnly=false"
    "spark.hadoop.dfs.datanode.kerberos.principal"                = "nn/_HOST@GANESHRJ.COM"
    "spark.hadoop.dfs.namenode.kerberos.principal"                = "nn/_HOST@GANESHRJ.COM"
    "spark.hadoop.javax.jdo.option.ConnectionDriverName"          = "org.mariadb.jdbc.Driver"
    "spark.hadoop.javax.jdo.option.ConnectionPassword"            = "hive"
    "spark.hadoop.javax.jdo.option.ConnectionURL"                 = "jdbc:mysql://kerbhdp31.ganeshrj.com/hive1"
    "spark.hadoop.javax.jdo.option.ConnectionUserName"            = "hive"
    "spark.hadoop.security.auth_to_local"                         = "RULE:[1:$1@$0](.*@GANESHRJ.COM)s/@.*//"
    "spark.sql.hive.metastore.jars"                               = "maven"
    "spark.sql.hive.metastore.schema.verification"                = "false"
    "spark.sql.hive.metastore.schema.verification.record.version" = "false"
    "spark.sql.hive.metastore.version"                            = "3.1.1"
  }
  node_type_id = "Standard_DS3_v2"
  is_pinned    = true
  init_scripts {
    dbfs {
      destination = "dbfs:/databricks/ganeshrj/kerb_init_v1/kerb-hdfs-init.bash"
    }
  }
  enable_elastic_disk = true
  cluster_name        = "kerb_hdp31_cluster_Std"
  cluster_log_conf {
    dbfs {
      destination = "dbfs:/cluster-logs"
    }
  }
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "SPOT_WITH_FALLBACK_AZURE"
  }
  autoscale {
    min_workers = 1
    max_workers = 2
  }
}
resource "databricks_cluster" "kerb_hdp31_connect_0128_050115_bends98" {
  spark_version = "7.4.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled"                      = "true"
    "spark.hadoop.hive.server2.authentication"                    = "KERBEROS"
    "spark.hadoop.hive.server2.thrift.sasl.qop"                   = "auth"
    "spark.hadoop.javax.jdo.option.ConnectionDriverName"          = "org.mariadb.jdbc.Driver"
    "spark.hadoop.javax.jdo.option.ConnectionPassword"            = "hive"
    "spark.hadoop.javax.jdo.option.ConnectionURL"                 = "jdbc:mysql://kerbhdp31.ganeshrj.com:3306/hive"
    "spark.hadoop.javax.jdo.option.ConnectionUserName"            = "hive"
    "spark.hadoop.rpc.protection"                                 = "privacy"
    "spark.hadoop.security.authentication"                        = "kerberos"
    "spark.sql.hive.metastore.jars"                               = "maven"
    "spark.sql.hive.metastore.schema.verification"                = "false"
    "spark.sql.hive.metastore.schema.verification.record.version" = "false"
    "spark.sql.hive.metastore.version"                            = "3.1.1"
  }
  node_type_id = "Standard_DS3_v2"
  is_pinned    = true
  init_scripts {
    dbfs {
      destination = "dbfs:/databricks/ganeshrj/kerb_init_scripts/kerb-hdfs-init.bash"
    }
  }
  enable_elastic_disk = true
  cluster_name        = "kerb_hdp31_connect"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 30
  autoscale {
    min_workers = 2
    max_workers = 8
  }
}
resource "databricks_cluster" "new_cluster_0706_111055_nb8xdcu6" {
  spark_version = "12.2.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.cluster.profile"       = "singleNode"
    "spark.databricks.delta.preview.enabled" = "true"
    "spark.master"                           = "local[*, 4]"
  }
  single_user_name    = databricks_user.bhavin_kukadia.user_name
  runtime_engine      = "STANDARD"
  node_type_id        = "Standard_DS3_v2"
  enable_elastic_disk = true
  data_security_mode  = "SINGLE_USER"
  custom_tags = {
    ResourceClass = "SingleNode"
  }
  cluster_name = "new cluster"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 120
}
resource "databricks_cluster" "overwatch_demo_1117_034424_i4qrczgd" {
  spark_version = "9.1.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
  }
  num_workers         = 4
  node_type_id        = "Standard_DS3_v2"
  is_pinned           = true
  enable_elastic_disk = true
  cluster_name        = "Overwatch_Demo"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
}
data "databricks_cluster_policy" "personal_compute" {
  policy_family_id = "personal-vm"
  name             = "Personal Compute"
  description      = "Use with small-to-medium data or libraries like pandas and scikit-learn. Spark runs in local mode."
}
resource "databricks_cluster" "purview_uc_demo_0717_153837_b5zed416" {
  spark_version = "12.2.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
  }
  single_user_name    = databricks_user.nikhil_gupta.user_name
  runtime_engine      = "STANDARD"
  node_type_id        = "Standard_DS3_v2"
  enable_elastic_disk = true
  data_security_mode  = "SINGLE_USER"
  cluster_name        = "Purview-UC-Demo"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 120
  autoscale {
    min_workers = 2
    max_workers = 8
  }
}
resource "databricks_library" "r02a382b89b3" {
  pypi {
    package = "spacy"
  }
  cluster_id = databricks_cluster.un_demo_0105_210816_swum644.id
}
resource "databricks_library" "r0e010e3272e" {
  maven {
    coordinates = "com.microsoft.azure:azure-sqldb-spark:1.0.2"
  }
  cluster_id = databricks_cluster.ganeshrj_msal_sqldb_test_0120_224353_toffy919.id
}
resource "databricks_library" "r1578c03bda8" {
  jar        = "dbfs:/FileStore/jars/c223e739_00eb_4f22_9aea_2a14924d7896-hbase_shaded_netty_2_2_0-f3f8d.jar"
  cluster_id = databricks_cluster.hbase_de_new_0518_011236_easy939.id
}
resource "databricks_library" "r15cd7ff1b9a" {
  jar        = "dbfs:/FileStore/jars/c7c77cf5_694d_4c4b_a802_2f6ad1a4618a-hbase_spark_1_0_1_SNAPSHOT-2bfa4.jar"
  cluster_id = databricks_cluster.hbase_de_new_0518_011236_easy939.id
}
resource "databricks_library" "r240f9737459" {
  pypi {
    package = "azureml"
  }
  cluster_id = databricks_cluster.iot_demo_cluster_0705_214821_afar123.id
}
resource "databricks_library" "r2955946ecfe" {
  pypi {
    package = "folium"
  }
  cluster_id = databricks_cluster.a_simple_cluster_0208_192534_motif544.id
}
resource "databricks_library" "r315b87ff44d" {
  pypi {
    package = "adal"
  }
  cluster_id = databricks_cluster.demo_cluster_0323_170018_burs288.id
}
resource "databricks_library" "r3580b8b537d" {
  jar        = "dbfs:/FileStore/jars/daa35ddb_a1f9_4c47_b62d_6c10d136e20f-hbase_client-99de6.jar"
  cluster_id = databricks_cluster.hbase_demo_0510_153436_liven246.id
}
resource "databricks_library" "r36624db9061" {
  jar        = "dbfs:/FileStore/jars/a373cde0_7993_45f2_814d_76e0a7a3282a-hbase_server-0e744.jar"
  cluster_id = databricks_cluster.hbase_de_new_0518_011236_easy939.id
}
resource "databricks_library" "r374c2431d72" {
  pypi {
    package = "pdfminer.six"
  }
  cluster_id = databricks_cluster.un_demo_0105_210816_swum644.id
}
resource "databricks_library" "r45fb75c91ce" {
  jar        = "dbfs:/FileStore/jars/f72ff755_8f40_4c2d_8b43_29fe326275ef-spark_databricks_2_12_0_1_0_SNAPSHOT-5e880.jar"
  cluster_id = databricks_cluster.a_simple_cluster_0208_192534_motif544.id
}
resource "databricks_library" "r4b05ba46c01" {
  jar        = "dbfs:/FileStore/jars/6206b501_c25c_4b8f_94be_5f998c856bba-hive_jdbc_3_1_0_3_1_4_0_315_standalone-21d33.jar"
  cluster_id = databricks_cluster.kerb_hdp31_cluster_jdbc_0128_163851_ue0c2r0f.id
}
resource "databricks_library" "r4b0e5ceb047" {
  jar        = "dbfs:/FileStore/jars/0a9dbd7b_7d88_4ca6_b4b8_8cdae6ce5cb8-hbase_common-8e287.jar"
  cluster_id = databricks_cluster.hbase_demo_0510_153436_liven246.id
}
resource "databricks_library" "r581c3dd9f45" {
  pypi {
    package = "folium"
  }
  cluster_id = databricks_cluster.iot_demo_cluster_0705_214821_afar123.id
}
resource "databricks_library" "r5db65f3eeb1" {
  pypi {
    package = "databricksapi"
  }
  cluster_id = databricks_cluster.demo_cluster_0323_170018_burs288.id
}
resource "databricks_library" "r671603d51e1" {
  pypi {
    package = "mlflow"
  }
  cluster_id = databricks_cluster.a_simple_cluster_0208_192534_motif544.id
}
resource "databricks_library" "r68141b3380c" {
  pypi {
    package = "hdfs"
  }
  cluster_id = databricks_cluster.iot_demo_cluster_0705_214821_afar123.id
}
resource "databricks_library" "r6b07c09df16" {
  pypi {
    package = "simplejson"
  }
  cluster_id = databricks_cluster.a_simple_cluster_0208_192534_motif544.id
}
resource "databricks_library" "r7414165f8e9" {
  maven {
    coordinates = "com.microsoft.azure:azure-eventhubs-spark_2.12:2.3.18"
  }
  cluster_id = databricks_cluster.a_simple_cluster_0208_192534_motif544.id
}
resource "databricks_library" "r7415a88053b" {
  jar        = "dbfs:/FileStore/jars/3ce86f5a_a071_4a36_8161_4ab0baf93919-hbase_mapreduce_2_4_2-5e20d.jar"
  cluster_id = databricks_cluster.hbase_de_new_0518_011236_easy939.id
}
resource "databricks_library" "r774eb2412d6" {
  jar        = "dbfs:/FileStore/jars/a89c498a_5497_452e_bedb_f52c703745b7-hbase_shaded_miscellaneous_2_2_0-54a2e.jar"
  cluster_id = databricks_cluster.hbase_demo_0510_153436_liven246.id
}
resource "databricks_library" "r81800dbbb9c" {
  jar        = "dbfs:/FileStore/jars/62658beb_77b3_4853_a3d5_d61e66702638-spark_examples_2_12_3_1_2-f2c79.jar"
  cluster_id = databricks_cluster.a_simple_cluster_0208_192534_motif544.id
}
resource "databricks_library" "r81800dbbb9c" {
  jar        = "dbfs:/FileStore/jars/efa8cef3_854c_4b04_9a8b_2a07d2fb0612-spark_examples_2_12_3_1_2-f2c79.jar"
  cluster_id = databricks_cluster.a_simple_cluster_0208_192534_motif544.id
}
resource "databricks_library" "r87fd1bbd35a" {
  maven {
    coordinates = "com.microsoft.azure:azure-eventhubs-spark_2.12:2.3.18"
  }
  cluster_id = databricks_cluster.demo_cluster_0323_170018_burs288.id
}
resource "databricks_library" "r8cc0b943253" {
  jar        = "dbfs:/FileStore/jars/e011ce0f_da54_4356_8831_ec19d3e316c0-hbase_shaded_miscellaneous_2_2_0-54a2e.jar"
  cluster_id = databricks_cluster.hbase_de_new_0518_011236_easy939.id
}
resource "databricks_library" "r90a4e50bb1b" {
  maven {
    coordinates = "com.crealytics:spark-excel_2.12:0.13.5"
  }
  cluster_id = databricks_cluster.a_simple_cluster_0208_192534_motif544.id
}
resource "databricks_library" "r91ca5fc77cf" {
  jar        = "dbfs:/FileStore/jars/7debf4eb_5d13_490e_a27b_51faf3635057-hbase_server-0e744.jar"
  cluster_id = databricks_cluster.hbase_demo_0510_153436_liven246.id
}
resource "databricks_library" "r9206ad39260" {
  maven {
    coordinates = "com.databricks.labs:overwatch_2.12:0.5.0.6"
  }
  cluster_id = databricks_cluster.overwatch_demo_1117_034424_i4qrczgd.id
}
resource "databricks_library" "r952dfcdc9e5" {
  jar        = "dbfs:/FileStore/jars/0f1fc60b_f493_4642_95b0_85ff6387a1af-hbase_mapreduce-dda9a.jar"
  cluster_id = databricks_cluster.hbase_demo_0510_153436_liven246.id
}
resource "databricks_library" "r9a871951d81" {
  pypi {
    package = "msal"
  }
  cluster_id = databricks_cluster.ganeshrj_msal_sqldb_test_0120_224353_toffy919.id
}
resource "databricks_library" "r9cd8ca21328" {
  jar        = "dbfs:/FileStore/jars/e81efe65_7565_4d48_9a31_8c2cc8f9ef80-hbase_shaded_protobuf_2_2_0-2b6ee.jar"
  cluster_id = databricks_cluster.hbase_demo_0510_153436_liven246.id
}
resource "databricks_library" "ra448d7e7469" {
  jar        = "dbfs:/FileStore/jars/cf888be2_91e9_4328_92a2_c7a33ee082b4-hbase_protocol_shaded-0f234.jar"
  cluster_id = databricks_cluster.hbase_de_new_0518_011236_easy939.id
}
resource "databricks_library" "rb330687b8e1" {
  jar        = "dbfs:/FileStore/jars/e1c04115_3bfd_408a_a076_238ed97ed5f8-hbase_protocol-033f7.jar"
  cluster_id = databricks_cluster.hbase_de_new_0518_011236_easy939.id
}
resource "databricks_library" "rc850fb02898" {
  jar        = "dbfs:/FileStore/jars/62ba1e9a_7cce_4d54_8b68_34122715842c-hbase_spark_1_0_1_SNAPSHOT-2bfa4.jar"
  cluster_id = databricks_cluster.hbase_demo_0510_153436_liven246.id
}
resource "databricks_library" "rd7fa42f0e4a" {
  jar        = "dbfs:/FileStore/jars/e80c53f2_047b_4b7a_8b9d_3460ef0cd44c-hbase_client-99de6.jar"
  cluster_id = databricks_cluster.hbase_de_new_0518_011236_easy939.id
}
resource "databricks_library" "rd90b7405919" {
  jar        = "dbfs:/FileStore/jars/451c05b9_9c82_45b3_963a_35bbf6cd3877-hbase_shaded_protobuf_2_2_0-2b6ee.jar"
  cluster_id = databricks_cluster.hbase_de_new_0518_011236_easy939.id
}
resource "databricks_library" "re2b0941aa67" {
  jar        = "dbfs:/FileStore/jars/539fa255_59d4_40e6_88c2_467ff0729094-hbase_shaded_netty_2_2_0-f3f8d.jar"
  cluster_id = databricks_cluster.hbase_demo_0510_153436_liven246.id
}
resource "databricks_library" "re48707f2a51" {
  jar        = "dbfs:/FileStore/jars/9073b251_0944_4ca4_bc10_9399bf75ea42-hbase_protocol_2_1_10_4_1_4_8-8b0b6.jar"
  cluster_id = databricks_cluster.hbase_demo_0510_153436_liven246.id
}
resource "databricks_library" "rf1b02faa21b" {
  maven {
    coordinates = "com.microsoft.azure:azure-eventhubs-spark_2.12:2.3.21"
  }
  cluster_id = databricks_cluster.overwatch_demo_1117_034424_i4qrczgd.id
}
resource "databricks_library" "rf32fa215d56" {
  jar        = "dbfs:/FileStore/jars/9675e36a_179a_41cd_8d45_1b7032f49d18-hbase_common-8e287.jar"
  cluster_id = databricks_cluster.hbase_de_new_0518_011236_easy939.id
}
resource "databricks_cluster" "roger_dings_personal_compute_cluster_0721_151230_9u1n2glm" {
  spark_version = "13.2.x-cpu-ml-scala2.12"
  spark_conf = {
    "spark.databricks.cluster.profile"       = "singleNode"
    "spark.databricks.delta.preview.enabled" = "true"
    "spark.master"                           = "local[*, 4]"
  }
  single_user_name    = databricks_user.roger_ding.user_name
  runtime_engine      = "STANDARD"
  policy_id           = data.databricks_cluster_policy.personal_compute.id
  node_type_id        = "Standard_DS3_v2"
  enable_elastic_disk = true
  data_security_mode  = "SINGLE_USER"
  custom_tags = {
    ResourceClass = "SingleNode"
  }
  cluster_name = "Roger Ding's Personal Compute Cluster"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 4320
}
resource "databricks_cluster" "test_blob_mount_0421_191122_hubby225" {
  spark_version = "8.1.x-scala2.12"
  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
  }
  node_type_id = "Standard_DS3_v2"
  is_pinned    = true
  init_scripts {
    dbfs {
      destination = "dbfs:/FileStore/blobfuse-mount_1.sh"
    }
  }
  enable_elastic_disk = true
  cluster_name        = "test_blob_mount"
  cluster_log_conf {
    dbfs {
      destination = "dbfs:/FileStore/logblogmnt"
    }
  }
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 30
  autoscale {
    min_workers = 1
    max_workers = 5
  }
}
resource "databricks_cluster" "test_rgdal_cluster_0803_141209_tics64" {
  spark_version = "8.4.x-scala2.12"
  spark_env_vars = {
    CPLUS_INCLUDE_PATH = "/usr/include/gdal"
    C_INCLUDE_PATH     = "/usr/include/gdal"
  }
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
  }
  node_type_id = "Standard_DS3_v2"
  is_pinned    = true
  init_scripts {
    dbfs {
      destination = "dbfs:/databricks/ganeshrj/init_scripts/gdal.sh"
    }
  }
  enable_elastic_disk = true
  cluster_name        = "test_rgdal_cluster"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 30
  autoscale {
    min_workers = 1
    max_workers = 2
  }
}
resource "databricks_cluster" "test_uc_0203_174451_7fgowa6c" {
  spark_version = "10.4.x-scala2.12"
  spark_conf = {
    "spark.databricks.delta.preview.enabled"            = "true"
    "spark.databricks.sql.initial.catalog.name"         = "hive_metastore"
    "spark.databricks.unityCatalog.enabled"             = "true"
    "spark.databricks.unityCatalog.enforce.permissions" = "false"
  }
  single_user_name    = databricks_user.ganesh_rajagopal.user_name
  runtime_engine      = "STANDARD"
  node_type_id        = "Standard_DS3_v2"
  is_pinned           = true
  enable_elastic_disk = true
  data_security_mode  = "SINGLE_USER"
  cluster_name        = "test_UC"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 30
  autoscale {
    min_workers = 1
    max_workers = 4
  }
}
resource "databricks_cluster" "un_demo_0105_210816_swum644" {
  spark_version = "7.3.x-scala2.12"
  spark_conf = {
    "spark.databricks.delta.preview.enabled" = "true"
  }
  node_type_id        = "Standard_DS3_v2"
  is_pinned           = true
  enable_elastic_disk = true
  cluster_name        = "un_demo"
  azure_attributes {
    spot_bid_max_price = -1
    first_on_demand    = 1
    availability       = "ON_DEMAND_AZURE"
  }
  autotermination_minutes = 120
  autoscale {
    min_workers = 1
    max_workers = 8
  }
}
resource "databricks_cluster_policy" "vw_etl_policy" {
  name       = "vw-etl-policy"
  definition = "{\n  \"spark_conf.spark.databricks.cluster.profile\": {\n    \"type\": \"forbidden\",\n    \"hidden\": true\n  },\n  \"spark_version\": {\n    \"type\": \"unlimited\",\n    \"defaultValue\": \"auto:latest\"\n  },\n  \"node_type_id\": {\n    \"type\": \"unlimited\",\n    \"defaultValue\": \"Standard_L32s\",\n    \"isOptional\": true\n  },\n  \"num_workers\": {\n    \"type\": \"unlimited\",\n    \"defaultValue\": 2,\n    \"isOptional\": true\n  },\n  \"instance_pool_id\": {\n    \"type\": \"unlimited\",\n    \"isOptional\": true,\n    \"defaultValue\": \"0223-124714-senna86-pool-29okazrz\"\n  },\n  \"driver_instance_pool_id\": {\n    \"type\": \"unlimited\",\n    \"isOptional\": true,\n    \"defaultValue\": \"0223-124714-senna86-pool-29okazrz\"\n  },\n  \"cluster_type\": {\n    \"type\": \"fixed\",\n    \"value\": \"job\"\n  },\n  \"autoscale.min_workers\": {\n    \"type\": \"fixed\",\n    \"value\": 1,\n    \"hidden\": true\n  },\n  \"autoscale.max_workers\": {\n    \"type\": \"range\",\n    \"maxValue\": 25,\n    \"defaultValue\": 14\n  }\n}"
}
resource "databricks_cluster_policy" "vw_etl_policy2" {
  name       = "vw-etl-policy2"
  definition = "{\n\"spark_conf.spark.databricks.cluster.profile\": {\n\"type\": \"forbidden\",\n\"hidden\": true\n},\n\"spark_version\": {\n\"type\": \"unlimited\",\n\"defaultValue\": \"auto:latest\"\n},\n\"node_type_id\": {\n\"type\": \"unlimited\",\n\"defaultValue\": \"Standard_L32s\",\n\"isOptional\": true\n},\n\"num_workers\": {\n\"type\": \"unlimited\",\n\"defaultValue\": 2,\n\"isOptional\": true\n},\n\"instance_pool_id\": {\n\"type\": \"unlimited\",\n\"isOptional\": true,\n\"defaultValue\": \"0227-201742-undid22-pool-pyavl6fz\"\n},\n\"driver_instance_pool_id\": {\n\"type\": \"unlimited\",\n\"isOptional\": true,\n\"defaultValue\": \"0227-201742-undid22-pool-pyavl6fz\"\n},\n\"cluster_type\": {\n\"type\": \"fixed\",\n\"value\": \"job\"\n},\n\"autoscale.min_workers\": {\n\"type\": \"fixed\",\n\"value\": 1,\n\"hidden\": true\n},\n\"autoscale.max_workers\": {\n\"type\": \"range\",\n\"maxValue\": 25,\n\"defaultValue\": 14\n}\n}"
}
resource "databricks_instance_pool" "vw_etl_pool" {
  preloaded_spark_versions              = ["11.3.x-photon-scala2.12"]
  node_type_id                          = "Standard_D4as_v5"
  instance_pool_name                    = "vw-etl-pool"
  idle_instance_autotermination_minutes = 60
  azure_attributes {
  }
}
resource "databricks_instance_pool" "vw_etl_pool2" {
  preloaded_spark_versions              = ["11.3.x-photon-scala2.12"]
  node_type_id                          = "Standard_D4as_v5"
  instance_pool_name                    = "vw-etl-pool2"
  idle_instance_autotermination_minutes = 60
  azure_attributes {
  }
}
