resource "databricks_job" "bk_test_job_720457101795677" {
  webhook_notifications {
  }
  task {
    task_key = "another_nb"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Users/bhavin.kukadia@databricks.com/Test"
    }
    job_cluster_key = "bk-test-job_cluster"
    email_notifications {
    }
    depends_on {
      task_key = "bk-test-job"
    }
  }
  task {
    task_key = "bk-test-job"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Users/bhavin.kukadia@databricks.com/Test"
    }
    job_cluster_key = "bk-test-job_cluster"
    email_notifications {
    }
  }
  schedule {
    timezone_id            = "America/Indianapolis"
    quartz_cron_expression = "50 25 21 * * ?"
  }
  name = "bk-test-job"
  job_cluster {
    new_cluster {
      spark_version = "12.2.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.cluster.profile"       = "singleNode"
        "spark.databricks.delta.preview.enabled" = "true"
        "spark.master"                           = "local[*, 4]"
      }
      runtime_engine      = "STANDARD"
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      data_security_mode  = "SINGLE_USER"
      custom_tags = {
        ResourceClass = "SingleNode"
      }
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    job_cluster_key = "bk-test-job_cluster"
  }
  email_notifications {
    on_failure                = [databricks_user.bhavin_kukadia.user_name]
    no_alert_for_skipped_runs = true
  }
}
resource "databricks_job" "clone_of_bk_test_job_672586672741465" {
  webhook_notifications {
  }
  task {
    task_key = "another_nb"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Users/bhavin.kukadia@databricks.com/Test"
    }
    job_cluster_key = "bk-test-job_cluster"
    email_notifications {
    }
    depends_on {
      task_key = "bk-test-job"
    }
  }
  task {
    task_key = "bk-test-job"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Users/bhavin.kukadia@databricks.com/Test"
    }
    job_cluster_key = "bk-test-job_cluster"
    email_notifications {
    }
  }
  schedule {
    timezone_id            = "America/Indianapolis"
    quartz_cron_expression = "50 25 21 * * ?"
  }
  name = "Clone of bk-test-job"
  job_cluster {
    new_cluster {
      spark_version = "12.2.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.cluster.profile"       = "singleNode"
        "spark.databricks.delta.preview.enabled" = "true"
        "spark.master"                           = "local[*, 4]"
      }
      runtime_engine      = "STANDARD"
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      data_security_mode  = "SINGLE_USER"
      custom_tags = {
        ResourceClass = "SingleNode"
      }
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    job_cluster_key = "bk-test-job_cluster"
  }
  email_notifications {
    on_failure                = [databricks_user.bhavin_kukadia.user_name]
    no_alert_for_skipped_runs = true
  }
}
resource "databricks_job" "get_adls_token_448076461218208" {
  webhook_notifications {
  }
  task {
    task_key = "Get_ADLS_Token"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Users/ganesh.rajagopal@databricks.com/Secrets/Get ADLS Token"
    }
    existing_cluster_id = "0512-173049-ubohj26r"
    email_notifications {
    }
  }
  schedule {
    timezone_id            = "America/New_York"
    quartz_cron_expression = "35 46 23 * * ?"
  }
  name = "Get ADLS Token"
  email_notifications {
    on_failure                = [databricks_user.ganesh_rajagopal.user_name]
    no_alert_for_skipped_runs = true
  }
}
resource "databricks_job" "hiveddl_211" {
  webhook_notifications {
  }
  task {
    task_key = "HiveDDL"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Shared/Hadoop Workshop/3. Code Migration - PySpark"
    }
    existing_cluster_id = databricks_cluster.demo_cluster_0323_170018_burs288.id
  }
  schedule {
    timezone_id            = "UTC"
    quartz_cron_expression = "56 53 5 * * ?"
  }
  name = "HiveDDL"
  email_notifications {
  }
}
resource "databricks_job" "migr_testpy_199" {
  webhook_notifications {
  }
  task {
    task_key = "migr_testpy"
    spark_submit_task {
      parameters = ["dbfs:/FileStore/adb_migration/adb_testspark.py"]
    }
    new_cluster {
      spark_version = "8.2.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
  }
  name = "migr_testpy"
  email_notifications {
  }
}
resource "databricks_job" "notebook1_1453" {
  webhook_notifications {
  }
  task {
    task_key = "Notebook1"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Users/ganesh.rajagopal@databricks.com/Arlo_Analysis"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
  }
  task {
    task_key = "notebook2"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/batch_operations_temp"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
    depends_on {
      task_key = "Notebook1"
    }
  }
  task {
    task_key = "notebook3"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/CosmosDB Write"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
    depends_on {
      task_key = "notebook2"
    }
    depends_on {
      task_key = "Notebook1"
    }
  }
  name = "Notebook1"
  email_notifications {
  }
}
resource "databricks_job" "notebook1_3367" {
  webhook_notifications {
  }
  task {
    task_key = "notebook1"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/0-Admin Mounts"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
  }
  task {
    task_key = "notebook2"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/batch_operations_temp"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
    depends_on {
      task_key = "notebook1"
    }
  }
  task {
    task_key = "notebook3"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Enable Files in Repos"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
    depends_on {
      task_key = "notebook2"
    }
    depends_on {
      task_key = "notebook1"
    }
  }
  name = "notebook1"
  email_notifications {
  }
}
resource "databricks_job" "rg_orch_296" {
  webhook_notifications {
  }
  task {
    task_key = "rg_orch"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Shared/Hadoop Workshop/8. Job Notebook Orchestrator"
    }
    new_cluster {
      spark_version = "8.2.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    library {
      jar = "dbfs:/FileStore/jars/d3aab11e_1fc9_4b03_8624_d3673aa2d55f-hive_udf-9df0d.jar"
    }
  }
  name = "rg_orch"
  email_notifications {
  }
}
resource "databricks_job" "rgdemo_orch_262" {
  webhook_notifications {
  }
  task {
    task_key = "rgdemo_orch"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Shared/Hadoop Workshop/8. Job Notebook Orchestrator"
    }
    new_cluster {
      spark_version = "8.2.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    library {
      jar = "dbfs:/FileStore/jars/28929aa3_fb17_44a6_83ec_aef7f3f8f62b-hive_udf_1_0_SNAPSHOT-350af.jar"
    }
  }
  name = "rgdemo_orch"
  email_notifications {
  }
}
resource "databricks_job" "teragen_365" {
  webhook_notifications {
  }
  task {
    task_key = "Teragen"
    spark_jar_task {
      parameters      = ["--class", "org.apache.spark.examples.terasort.TeraGen", "dbfs:/FileStore/Teragen", "1g"]
      main_class_name = "org.apache.spark.examples.terasort.TeraGen"
    }
    library {
      jar = "dbfs:/FileStore/jars/62658beb_77b3_4853_a3d5_d61e66702638-spark_examples_2_12_3_1_2-f2c79.jar"
    }
    existing_cluster_id = databricks_cluster.a_simple_cluster_0208_192534_motif544.id
  }
  name = "Teragen"
  email_notifications {
  }
}
resource "databricks_job" "test123_3381" {
  webhook_notifications {
  }
  task {
    task_key = "dlt1"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/delta-live-tables-notebooks/sql/Retail Sales"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
    depends_on {
      task_key = "test123"
    }
  }
  task {
    task_key = "test123"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/0-Admin Mounts"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
  }
  name = "test123"
  email_notifications {
  }
}
resource "databricks_job" "test123_3492" {
  webhook_notifications {
  }
  task {
    task_key = "test123"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/0-Admin Mounts"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
  }
  task {
    task_key = "test234"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/CosmosDB Write"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
    depends_on {
      task_key = "test123"
    }
  }
  task {
    task_key = "test321"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/CosmosDB Write"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
    depends_on {
      task_key = "test234"
    }
    depends_on {
      task_key = "test123"
    }
  }
  name = "test123"
  email_notifications {
  }
}
resource "databricks_job" "test123_3580" {
  webhook_notifications {
  }
  task {
    task_key = "job2"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/CosmosDB Write"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
    depends_on {
      task_key = "test123"
    }
  }
  task {
    task_key = "job3"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Enable Files in Repos"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
    depends_on {
      task_key = "job2"
    }
  }
  task {
    task_key = "test123"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/0-Admin Mounts"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
  }
  name = "test123"
  email_notifications {
  }
}
resource "databricks_job" "test1_1519" {
  webhook_notifications {
  }
  task {
    task_key = "notebook2"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/0-Admin Mounts"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
    depends_on {
      task_key = "test1"
    }
  }
  task {
    task_key = "test1"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/batch_operations_temp"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
    email_notifications {
    }
  }
  name = "test1"
  email_notifications {
  }
}
resource "databricks_job" "test_3664" {
  webhook_notifications {
  }
  task {
    task_key = "test"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/AON/AON Impala"
    }
    new_cluster {
      spark_version = "9.1.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
  }
  name = "test"
  email_notifications {
  }
}
resource "databricks_job" "test_437" {
  webhook_notifications {
  }
  task {
    task_key = "test"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/0-Admin Mounts"
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
  }
  name = "test"
  email_notifications {
  }
}
resource "databricks_job" "test_job_549" {
  webhook_notifications {
  }
  task {
    task_key = "Test_JOB"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/testspark"
      base_parameters = {
        name = "1"
      }
    }
    new_cluster {
      spark_version = "8.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        spot_bid_max_price = -1
        first_on_demand    = 1
        availability       = "ON_DEMAND_AZURE"
      }
    }
  }
  name = "Test_JOB"
  email_notifications {
  }
}
resource "databricks_job" "testjob_5" {
  webhook_notifications {
  }
  task {
    task_key = "testJob"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Users/ganesh.rajagopal@databricks.com/adf_test_notebook"
    }
    new_cluster {
      spark_version = "7.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  name = "testJob"
  email_notifications {
  }
}
resource "databricks_job" "untitled_19" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_20" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_21" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_22" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_23" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_24" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_25" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_26" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_27" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_28" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_29" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_30" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_31" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_32" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_33" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_34" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_35" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_36" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_37" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Users/ganesh.rajagopal@databricks.com/test"
    }
    existing_cluster_id = databricks_cluster.ganeshrj_msal_sqldb_test_0120_224353_toffy919.id
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_4" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.3.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "untitled_6" {
  webhook_notifications {
  }
  task {
    task_key = "Untitled"
    new_cluster {
      spark_version = "7.4.x-scala2.12"
      spark_env_vars = {
        PYSPARK_PYTHON = "/databricks/python3/bin/python3"
      }
      spark_conf = {
        "spark.databricks.delta.preview.enabled" = "true"
      }
      num_workers         = 8
      node_type_id        = "Standard_DS3_v2"
      enable_elastic_disk = true
      azure_attributes {
        availability = "ON_DEMAND_AZURE"
      }
    }
  }
  email_notifications {
  }
}
resource "databricks_job" "vw_etl2_373344185305405" {
  webhook_notifications {
  }
  task {
    task_key = "vw-etl2"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Quickstart Notebook"
    }
    job_cluster_key = "vw-etl2_cluster"
    email_notifications {
    }
  }
  name = "vw-etl2"
  job_cluster {
    new_cluster {
      spark_version      = "12.1.x-scala2.12"
      runtime_engine     = "PHOTON"
      policy_id          = databricks_cluster_policy.vw_etl_policy2.id
      instance_pool_id   = databricks_instance_pool.vw_etl_pool2.id
      data_security_mode = "SINGLE_USER"
      autoscale {
        min_workers = 1
        max_workers = 14
      }
    }
    job_cluster_key = "vw-etl2_cluster"
  }
  email_notifications {
  }
}
resource "databricks_job" "vw_etl_test_466617609222548" {
  webhook_notifications {
  }
  task {
    task_key = "vw-etl-test"
    notebook_task {
      source        = "WORKSPACE"
      notebook_path = "/Quickstart Notebook"
    }
    job_cluster_key = "vw-etl-test_cluster"
    email_notifications {
    }
  }
  name = "vw-etl-test"
  job_cluster {
    new_cluster {
      spark_version      = "12.1.x-scala2.12"
      runtime_engine     = "PHOTON"
      policy_id          = databricks_cluster_policy.vw_etl_policy.id
      instance_pool_id   = databricks_instance_pool.vw_etl_pool.id
      data_security_mode = "SINGLE_USER"
      autoscale {
        min_workers = 1
        max_workers = 3
      }
    }
    job_cluster_key = "vw-etl-test_cluster"
  }
  email_notifications {
  }
}
