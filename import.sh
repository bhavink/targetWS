#!/bin/sh

set -e

terraform import databricks_secret_scope._da39a3ee5e "TestSCope"
terraform import databricks_cluster.a_simple_cluster_0208_192534_motif544 "0208-192534-motif544"
terraform import databricks_user.abraham_pabbathi "6025843061429705"
terraform import databricks_secret_scope.acltestscope_3829792ab3 "ACLTestScope"
terraform import databricks_secret_acl.acltestscope_ganesh_rajagopal "ACLTestScope|||ganesh.rajagopal@databricks.com"
terraform import databricks_secret_acl.acltestscope_ganeshrj_sqldb_readonly "ACLTestScope|||ganeshrj_sqldb_readonly"
terraform import databricks_group_member.admins_2774833133357283_2521a70b_5270_4c3f_8c54_bea2cb71b409 "2774833133357283|3441818116514720"
terraform import databricks_group_member.admins_2774833133357283_74249d51_9586_49ed_8973_1c01509d63e8 "2774833133357283|5731918631675148"
terraform import databricks_group_member.admins_2774833133357283_abraham_pabbathi "2774833133357283|6025843061429705"
terraform import databricks_group_member.admins_2774833133357283_ajay_singh "2774833133357283|6126300623522973"
terraform import databricks_group_member.admins_2774833133357283_antonio_irizarry "2774833133357283|4386068138367044"
terraform import databricks_group_member.admins_2774833133357283_asher_bartch "2774833133357283|2470237189967003"
terraform import databricks_group_member.admins_2774833133357283_bhavin_kukadia "2774833133357283|1950142778633211"
terraform import databricks_group_member.admins_2774833133357283_bruce_nelson "2774833133357283|7328759942371872"
terraform import databricks_group_member.admins_2774833133357283_chenqin_xu "2774833133357283|5574065572589429"
terraform import databricks_group_member.admins_2774833133357283_ganesh_rajagopal "2774833133357283|4608400476000858"
terraform import databricks_group_member.admins_2774833133357283_ganeshrj_hdpmi_adf_user_assigned_mi "2774833133357283|8442090486855365"
terraform import databricks_group_member.admins_2774833133357283_ganeshrj_mi_adf_appl_id "2774833133357283|1336238699279333"
terraform import databricks_group_member.admins_2774833133357283_ganeshrj_mi_adf_test "2774833133357283|2708737882166954"
terraform import databricks_group_member.admins_2774833133357283_ganeshrj_mi_adf_user_assigned_mi "2774833133357283|213204400443677"
terraform import databricks_group_member.admins_2774833133357283_ganeshrj_postman_sp "2774833133357283|5010665359431307"
terraform import databricks_group_member.admins_2774833133357283_ganeshrj_sqldb_readonly "2774833133357283|3427963871004739"
terraform import databricks_group_member.admins_2774833133357283_ganeshrj_sqldbadmin "2774833133357283|3239514562238688"
terraform import databricks_group_member.admins_2774833133357283_ganeshrj_uc_ua_mi "2774833133357283|2248766594429473"
terraform import databricks_group_member.admins_2774833133357283_glenn_wiebe "2774833133357283|8411610722582213"
terraform import databricks_group_member.admins_2774833133357283_guido_oswald "2774833133357283|6066264009754637"
terraform import databricks_group_member.admins_2774833133357283_hao_wang "2774833133357283|1009041076922914"
terraform import databricks_group_member.admins_2774833133357283_kayla_grieme "2774833133357283|6831428600330047"
terraform import databricks_group_member.admins_2774833133357283_kevin_barlow "2774833133357283|2147237203918596"
terraform import databricks_group_member.admins_2774833133357283_kyle_hale "2774833133357283|5198417790669618"
terraform import databricks_group_member.admins_2774833133357283_leo_furlong "2774833133357283|979127861922489"
terraform import databricks_group_member.admins_2774833133357283_luis_moros "2774833133357283|4916116303200837"
terraform import databricks_group_member.admins_2774833133357283_mangedidentities "2774833133357283|790905299331875"
terraform import databricks_group_member.admins_2774833133357283_metastore_admin_users "2774833133357283|851247659650529"
terraform import databricks_group_member.admins_2774833133357283_nathan_anthony "2774833133357283|7116249001054040"
terraform import databricks_group_member.admins_2774833133357283_neil_best "2774833133357283|1728866782013041"
terraform import databricks_group_member.admins_2774833133357283_nikhil_gupta "2774833133357283|4800425951519139"
terraform import databricks_group_member.admins_2774833133357283_odl_user_231560 "2774833133357283|6674891177433124"
terraform import databricks_group_member.admins_2774833133357283_parth_vakil "2774833133357283|4208257252769298"
terraform import databricks_group_member.admins_2774833133357283_patrick_bayne "2774833133357283|4765987006634696"
terraform import databricks_group_member.admins_2774833133357283_prithish_mathews "2774833133357283|7770383044369309"
terraform import databricks_group_member.admins_2774833133357283_qing_sun "2774833133357283|290231144012928"
terraform import databricks_group_member.admins_2774833133357283_rafi_kurlansik "2774833133357283|1256651402323171"
terraform import databricks_group_member.admins_2774833133357283_ravishankar_rajalingam "2774833133357283|7620376204516186"
terraform import databricks_group_member.admins_2774833133357283_ricardo_sugawara "2774833133357283|984563963076254"
terraform import databricks_group_member.admins_2774833133357283_roger_ding "2774833133357283|5481748885481548"
terraform import databricks_group_member.admins_2774833133357283_ron_guerrero "2774833133357283|2027787860445543"
terraform import databricks_group_member.admins_2774833133357283_sat_sp "2774833133357283|3068023934228352"
terraform import databricks_group_member.admins_2774833133357283_scott_stafford "2774833133357283|6558583201058318"
terraform import databricks_group_member.admins_2774833133357283_sheila_stewart "2774833133357283|8086143928770907"
terraform import databricks_group_member.admins_2774833133357283_spentitlements "2774833133357283|459335653644651"
terraform import databricks_group_member.admins_2774833133357283_sumit_prakash "2774833133357283|981245964518421"
terraform import databricks_group_member.admins_2774833133357283_suresh_matlapudi "2774833133357283|6277588545699517"
terraform import databricks_group_member.admins_2774833133357283_todd_cowles "2774833133357283|6300840171289479"
terraform import databricks_group_member.admins_2774833133357283_unity_west "2774833133357283|4705730961836604"
terraform import databricks_group_member.admins_2774833133357283_venkata_wunnava "2774833133357283|7708847660258208"
terraform import databricks_group_member.admins_2774833133357283_vivek_singh "2774833133357283|2159042406187004"
terraform import databricks_group_member.admins_2774833133357283_william_gui_braccialli "2774833133357283|372598947055926"
terraform import databricks_group_member.admins_2774833133357283_zafer_bilaloglu "2774833133357283|6670263236332287"
terraform import databricks_user.ajay_singh "6126300623522973"
terraform import databricks_user.antonio_irizarry "4386068138367044"
terraform import databricks_user.asher_bartch "2470237189967003"
terraform import databricks_user.bhavin_kukadia "1950142778633211"
terraform import databricks_job.bk_test_job_720457101795677 "720457101795677"
terraform import databricks_user.bruce_nelson "7328759942371872"
terraform import databricks_user.chenqin_xu "5574065572589429"
terraform import databricks_job.clone_of_bk_test_job_672586672741465 "672586672741465"
terraform import databricks_secret.clonesecret_adlsclonekey_ff5ee0be68 "clonesecret|||adlsclonekey"
terraform import databricks_secret_scope.clonesecret_fede4b351f "clonesecret"
terraform import databricks_secret_acl.clonesecret_ganesh_rajagopal "clonesecret|||ganesh.rajagopal@databricks.com"
terraform import databricks_secret_scope.dbadlsaccess_ecf2a395fd "dbadlsaccess"
terraform import databricks_secret_acl.dbadlsaccess_ganesh_rajagopal "dbadlsaccess|||ganesh.rajagopal@databricks.com"
terraform import databricks_cluster.default_encr_0810_185441_qslvcs71 "0810-185441-qslvcs71"
terraform import databricks_cluster.demo_cluster_0323_170018_burs288 "0323-170018-burs288"
terraform import databricks_user.ganesh_rajagopal "4608400476000858"
terraform import databricks_secret.ganesh_rajagopal "ganesh.rajagopal@databricks.com|||password"
terraform import databricks_secret_acl.ganesh_rajagopal "ganesh.rajagopal@databricks.com|||ganesh.rajagopal@databricks.com"
terraform import databricks_secret_scope.ganesh_rajagopal "ganesh.rajagopal@databricks.com"
terraform import databricks_service_principal.ganeshrj_hdpmi_adf_user_assigned_mi_8442090486855365 "8442090486855365"
terraform import databricks_service_principal.ganeshrj_mi_adf_appl_id_1336238699279333 "1336238699279333"
terraform import databricks_service_principal.ganeshrj_mi_adf_test_2708737882166954 "2708737882166954"
terraform import databricks_service_principal.ganeshrj_mi_adf_user_assigned_mi_213204400443677 "213204400443677"
terraform import databricks_cluster.ganeshrj_msal_sqldb_test_0120_224353_toffy919 "0120-224353-toffy919"
terraform import databricks_service_principal.ganeshrj_postman_sp_5010665359431307 "5010665359431307"
terraform import databricks_group.ganeshrj_sqldb_readonly_3427963871004739 "3427963871004739"
terraform import databricks_group_member.ganeshrj_sqldb_readonly_3427963871004739_sheila_stewart "3427963871004739|8086143928770907"
terraform import databricks_group.ganeshrj_sqldbadmin_3239514562238688 "3239514562238688"
terraform import databricks_group_member.ganeshrj_sqldbadmin_3239514562238688_ganesh_rajagopal "3239514562238688|4608400476000858"
terraform import databricks_group_member.ganeshrj_sqldbadmin_3239514562238688_nikhil_gupta "3239514562238688|4800425951519139"
terraform import databricks_cluster.ganeshrj_test_hdp26_0823_192001_pipit316 "0823-192001-pipit316"
terraform import databricks_cluster.ganeshrj_test_hdp30_0823_191217_grief187 "0823-191217-grief187"
terraform import databricks_cluster.ganeshrj_test_hdp30_no_thrift_1120_003235_hies621 "1120-003235-hies621"
terraform import databricks_cluster.ganeshrj_uc_test_0120_183235_6ubrqb4i "0120-183235-6ubrqb4i"
terraform import databricks_service_principal.ganeshrj_uc_ua_mi_2248766594429473 "2248766594429473"
terraform import databricks_job.get_adls_token_448076461218208 "448076461218208"
terraform import databricks_user.glenn_wiebe "8411610722582213"
terraform import databricks_secret_scope.grjscopeviaapi_523ea9776c "grjScopeviaAPI"
terraform import databricks_secret_scope.grjscopeviaapi_akv_9d11065910 "grjScopeviaAPI_AKV"
terraform import databricks_secret_acl.grjscopeviaapi_akv_users "grjScopeviaAPI_AKV|||users"
terraform import databricks_secret_acl.grjscopeviaapi_users "grjScopeviaAPI|||users"
terraform import databricks_user.guido_oswald "6066264009754637"
terraform import databricks_user.hao_wang "1009041076922914"
terraform import databricks_cluster.hbase_de_new_0518_011236_easy939 "0518-011236-easy939"
terraform import databricks_cluster.hbase_demo_0510_153436_liven246 "0510-153436-liven246"
terraform import databricks_secret_scope.hdinsighthivems_6aa19ec252 "hdinsighthiveMS"
terraform import databricks_secret_acl.hdinsighthivems_ganesh_rajagopal "hdinsighthiveMS|||ganesh.rajagopal@databricks.com"
terraform import databricks_job.hiveddl_211 "211"
terraform import databricks_cluster.internode_encr_test_0810_162203_b39npavh "0810-162203-b39npavh"
terraform import databricks_cluster.iot_demo_cluster_0705_214821_afar123 "0705-214821-afar123"
terraform import databricks_user.kayla_grieme "6831428600330047"
terraform import databricks_cluster.kerb_hdp31_73_cluster_0831_194301_web21 "0831-194301-web21"
terraform import databricks_cluster.kerb_hdp31_cluster_jdbc_0128_163851_ue0c2r0f "0128-163851-ue0c2r0f"
terraform import databricks_cluster.kerb_hdp31_cluster_sn_0901_225646_loaf897 "0901-225646-loaf897"
terraform import databricks_cluster.kerb_hdp31_cluster_std_0902_145639_toil185 "0902-145639-toil185"
terraform import databricks_cluster.kerb_hdp31_connect_0128_050115_bends98 "0128-050115-bends98"
terraform import databricks_user.kevin_barlow "2147237203918596"
terraform import databricks_user.kyle_hale "5198417790669618"
terraform import databricks_user.leo_furlong "979127861922489"
terraform import databricks_user.luis_moros "4916116303200837"
terraform import databricks_group.mangedidentities_790905299331875 "790905299331875"
terraform import databricks_group_member.mangedidentities_790905299331875_ganeshrj_hdpmi_adf_user_assigned_mi "790905299331875|8442090486855365"
terraform import databricks_group_member.mangedidentities_790905299331875_ganeshrj_mi_adf_appl_id "790905299331875|1336238699279333"
terraform import databricks_group_member.mangedidentities_790905299331875_ganeshrj_mi_adf_user_assigned_mi "790905299331875|213204400443677"
terraform import databricks_group.metastore_admin_users_851247659650529 "851247659650529"
terraform import databricks_group_member.metastore_admin_users_851247659650529_ganesh_rajagopal "851247659650529|4608400476000858"
terraform import databricks_job.migr_testpy_199 "199"
terraform import databricks_user.nathan_anthony "7116249001054040"
terraform import databricks_user.neil_best "1728866782013041"
terraform import databricks_user.nikhil_gupta "4800425951519139"
terraform import databricks_secret_scope.niktest_2ec8a1f021 "NikTest"
terraform import databricks_secret_acl.niktest_ganesh_rajagopal "NikTest|||ganesh.rajagopal@databricks.com"
terraform import databricks_job.notebook1_1453 "1453"
terraform import databricks_job.notebook1_3367 "3367"
terraform import databricks_user.odl_user_231560 "6674891177433124"
terraform import databricks_cluster.overwatch_demo_1117_034424_i4qrczgd "1117-034424-i4qrczgd"
terraform import databricks_user.parth_vakil "4208257252769298"
terraform import databricks_user.patrick_bayne "4765987006634696"
terraform import databricks_user.prithish_mathews "7770383044369309"
terraform import databricks_user.qing_sun "290231144012928"
terraform import databricks_library.r02a382b89b3 "0105-210816-swum644/pypi:spacy"
terraform import databricks_library.r0e010e3272e "0120-224353-toffy919/mvn:com.microsoft.azure:azure-sqldb-spark:1.0.2"
terraform import databricks_library.r1578c03bda8 "0518-011236-easy939/jar:dbfs:/FileStore/jars/c223e739_00eb_4f22_9aea_2a14924d7896-hbase_shaded_netty_2_2_0-f3f8d.jar"
terraform import databricks_library.r15cd7ff1b9a "0518-011236-easy939/jar:dbfs:/FileStore/jars/c7c77cf5_694d_4c4b_a802_2f6ad1a4618a-hbase_spark_1_0_1_SNAPSHOT-2bfa4.jar"
terraform import databricks_library.r240f9737459 "0705-214821-afar123/pypi:azureml"
terraform import databricks_library.r2955946ecfe "0208-192534-motif544/pypi:folium"
terraform import databricks_library.r315b87ff44d "0323-170018-burs288/pypi:adal"
terraform import databricks_library.r3580b8b537d "0510-153436-liven246/jar:dbfs:/FileStore/jars/daa35ddb_a1f9_4c47_b62d_6c10d136e20f-hbase_client-99de6.jar"
terraform import databricks_library.r36624db9061 "0518-011236-easy939/jar:dbfs:/FileStore/jars/a373cde0_7993_45f2_814d_76e0a7a3282a-hbase_server-0e744.jar"
terraform import databricks_library.r374c2431d72 "0105-210816-swum644/pypi:pdfminer.six"
terraform import databricks_library.r45fb75c91ce "0208-192534-motif544/jar:dbfs:/FileStore/jars/f72ff755_8f40_4c2d_8b43_29fe326275ef-spark_databricks_2_12_0_1_0_SNAPSHOT-5e880.jar"
terraform import databricks_library.r4b05ba46c01 "0128-163851-ue0c2r0f/jar:dbfs:/FileStore/jars/6206b501_c25c_4b8f_94be_5f998c856bba-hive_jdbc_3_1_0_3_1_4_0_315_standalone-21d33.jar"
terraform import databricks_library.r4b0e5ceb047 "0510-153436-liven246/jar:dbfs:/FileStore/jars/0a9dbd7b_7d88_4ca6_b4b8_8cdae6ce5cb8-hbase_common-8e287.jar"
terraform import databricks_library.r581c3dd9f45 "0705-214821-afar123/pypi:folium"
terraform import databricks_library.r5db65f3eeb1 "0323-170018-burs288/pypi:databricksapi"
terraform import databricks_library.r671603d51e1 "0208-192534-motif544/pypi:mlflow"
terraform import databricks_library.r68141b3380c "0705-214821-afar123/pypi:hdfs"
terraform import databricks_library.r6b07c09df16 "0208-192534-motif544/pypi:simplejson"
terraform import databricks_library.r7414165f8e9 "0208-192534-motif544/mvn:com.microsoft.azure:azure-eventhubs-spark_2.12:2.3.18"
terraform import databricks_library.r7415a88053b "0518-011236-easy939/jar:dbfs:/FileStore/jars/3ce86f5a_a071_4a36_8161_4ab0baf93919-hbase_mapreduce_2_4_2-5e20d.jar"
terraform import databricks_library.r774eb2412d6 "0510-153436-liven246/jar:dbfs:/FileStore/jars/a89c498a_5497_452e_bedb_f52c703745b7-hbase_shaded_miscellaneous_2_2_0-54a2e.jar"
terraform import databricks_service_principal.r7929d243e0d "5731918631675148"
terraform import databricks_library.r81800dbbb9c "0208-192534-motif544/jar:dbfs:/FileStore/jars/efa8cef3_854c_4b04_9a8b_2a07d2fb0612-spark_examples_2_12_3_1_2-f2c79.jar"
terraform import databricks_library.r81800dbbb9c "0208-192534-motif544/jar:dbfs:/FileStore/jars/62658beb_77b3_4853_a3d5_d61e66702638-spark_examples_2_12_3_1_2-f2c79.jar"
terraform import databricks_library.r87fd1bbd35a "0323-170018-burs288/mvn:com.microsoft.azure:azure-eventhubs-spark_2.12:2.3.18"
terraform import databricks_library.r8cc0b943253 "0518-011236-easy939/jar:dbfs:/FileStore/jars/e011ce0f_da54_4356_8831_ec19d3e316c0-hbase_shaded_miscellaneous_2_2_0-54a2e.jar"
terraform import databricks_library.r90a4e50bb1b "0208-192534-motif544/mvn:com.crealytics:spark-excel_2.12:0.13.5"
terraform import databricks_library.r91ca5fc77cf "0510-153436-liven246/jar:dbfs:/FileStore/jars/7debf4eb_5d13_490e_a27b_51faf3635057-hbase_server-0e744.jar"
terraform import databricks_library.r9206ad39260 "1117-034424-i4qrczgd/mvn:com.databricks.labs:overwatch_2.12:0.5.0.6"
terraform import databricks_library.r952dfcdc9e5 "0510-153436-liven246/jar:dbfs:/FileStore/jars/0f1fc60b_f493_4642_95b0_85ff6387a1af-hbase_mapreduce-dda9a.jar"
terraform import databricks_library.r9a871951d81 "0120-224353-toffy919/pypi:msal"
terraform import databricks_library.r9cd8ca21328 "0510-153436-liven246/jar:dbfs:/FileStore/jars/e81efe65_7565_4d48_9a31_8c2cc8f9ef80-hbase_shaded_protobuf_2_2_0-2b6ee.jar"
terraform import databricks_library.ra448d7e7469 "0518-011236-easy939/jar:dbfs:/FileStore/jars/cf888be2_91e9_4328_92a2_c7a33ee082b4-hbase_protocol_shaded-0f234.jar"
terraform import databricks_user.rafi_kurlansik "1256651402323171"
terraform import databricks_user.ravishankar_rajalingam "7620376204516186"
terraform import databricks_library.rb330687b8e1 "0518-011236-easy939/jar:dbfs:/FileStore/jars/e1c04115_3bfd_408a_a076_238ed97ed5f8-hbase_protocol-033f7.jar"
terraform import databricks_library.rc850fb02898 "0510-153436-liven246/jar:dbfs:/FileStore/jars/62ba1e9a_7cce_4d54_8b68_34122715842c-hbase_spark_1_0_1_SNAPSHOT-2bfa4.jar"
terraform import databricks_service_principal.rd56594fe3ad "3441818116514720"
terraform import databricks_library.rd7fa42f0e4a "0518-011236-easy939/jar:dbfs:/FileStore/jars/e80c53f2_047b_4b7a_8b9d_3460ef0cd44c-hbase_client-99de6.jar"
terraform import databricks_library.rd90b7405919 "0518-011236-easy939/jar:dbfs:/FileStore/jars/451c05b9_9c82_45b3_963a_35bbf6cd3877-hbase_shaded_protobuf_2_2_0-2b6ee.jar"
terraform import databricks_library.re2b0941aa67 "0510-153436-liven246/jar:dbfs:/FileStore/jars/539fa255_59d4_40e6_88c2_467ff0729094-hbase_shaded_netty_2_2_0-f3f8d.jar"
terraform import databricks_library.re48707f2a51 "0510-153436-liven246/jar:dbfs:/FileStore/jars/9073b251_0944_4ca4_bc10_9399bf75ea42-hbase_protocol_2_1_10_4_1_4_8-8b0b6.jar"
terraform import databricks_library.rf1b02faa21b "1117-034424-i4qrczgd/mvn:com.microsoft.azure:azure-eventhubs-spark_2.12:2.3.21"
terraform import databricks_library.rf32fa215d56 "0518-011236-easy939/jar:dbfs:/FileStore/jars/9675e36a_179a_41cd_8d45_1b7032f49d18-hbase_common-8e287.jar"
terraform import databricks_job.rg_orch_296 "296"
terraform import databricks_job.rgdemo_orch_262 "262"
terraform import databricks_user.ricardo_sugawara "984563963076254"
terraform import databricks_user.roger_ding "5481748885481548"
terraform import databricks_user.ron_guerrero "2027787860445543"
terraform import databricks_secret_scope.ronguerrero_scope_a0a9fd126b "ronguerrero_scope"
terraform import databricks_secret.ronguerrero_scope_credentials_38e0bbd230 "ronguerrero_scope|||credentials"
terraform import databricks_secret_acl.ronguerrero_scope_ron_guerrero "ronguerrero_scope|||ron.guerrero@databricks.com"
terraform import databricks_service_principal.sat_sp_3068023934228352 "3068023934228352"
terraform import databricks_user.scott_stafford "6558583201058318"
terraform import databricks_user.sheila_stewart "8086143928770907"
terraform import databricks_secret_scope.sheilatest_1491c35336 "sheilatest"
terraform import databricks_secret_acl.sheilatest_sheila_stewart "sheilatest|||sheila.stewart@databricks.com"
terraform import databricks_cluster.single_node_compute_cluster_0721_151230_9u1n2glm "0721-151230-9u1n2glm"
terraform import databricks_group.spentitlements_459335653644651 "459335653644651"
terraform import databricks_group_member.spentitlements_459335653644651_unity_west "459335653644651|4705730961836604"
terraform import databricks_user.sumit_prakash "981245964518421"
terraform import databricks_user.suresh_matlapudi "6277588545699517"
terraform import databricks_job.teragen_365 "365"
terraform import databricks_job.test123_3381 "3381"
terraform import databricks_job.test123_3492 "3492"
terraform import databricks_job.test123_3580 "3580"
terraform import databricks_job.test1_1519 "1519"
terraform import databricks_job.test_3664 "3664"
terraform import databricks_job.test_437 "437"
terraform import databricks_cluster.test_blob_mount_0421_191122_hubby225 "0421-191122-hubby225"
terraform import databricks_job.test_job_549 "549"
terraform import databricks_cluster.test_rgdal_cluster_0803_141209_tics64 "0803-141209-tics64"
terraform import databricks_cluster.test_uc_0203_174451_7fgowa6c "0203-174451-7fgowa6c"
terraform import databricks_secret_scope.testadmin_c684ae0ba8 "TestAdmin"
terraform import databricks_secret_acl.testadmin_ganesh_rajagopal "TestAdmin|||ganesh.rajagopal@databricks.com"
terraform import databricks_secret_scope.testagainsheila_43bc9c5d05 "testagainsheila"
terraform import databricks_secret_acl.testagainsheila_sheila_stewart "testagainsheila|||sheila.stewart@databricks.com"
terraform import databricks_job.testjob_5 "5"
terraform import databricks_secret_scope.testredact_af25ce84c5 "testRedact"
terraform import databricks_secret_acl.testredact_ganesh_rajagopal "testRedact|||ganesh.rajagopal@databricks.com"
terraform import databricks_secret_scope.testscope_5661edbae4 "testScope"
terraform import databricks_secret.testscope_adlsaccess_5694fd7a58 "TestSCope|||adlsaccess"
terraform import databricks_secret.testscope_az_bootcamp_ganesh_kv_spn_fe_eecf8a29e4 "TestSCope|||az-bootcamp-ganesh-kv-spn-fe"
terraform import databricks_secret.testscope_client_secret_cad1479700 "TestSCope|||client-secret"
terraform import databricks_secret.testscope_dbprofilerclientid_523675dd29 "TestSCope|||dbprofilerClientId"
terraform import databricks_secret.testscope_dbprofilersecret_ccf2467911 "TestSCope|||dbprofilerSecret"
terraform import databricks_secret.testscope_dbprofilertenantid_ed863a5916 "TestSCope|||dbprofilerTenantId"
terraform import databricks_secret.testscope_key_5af7188e56 "TestSCope|||key"
terraform import databricks_secret.testscope_sat_token_1668791468712484_ce1727a238 "TestSCope|||sat-token-1668791468712484"
terraform import databricks_secret.testscope_test_64a867df81 "TestSCope|||test"
terraform import databricks_secret.testscope_testredact_60eaaed128 "TestSCope|||testRedact"
terraform import databricks_secret.testscope_testsecrets_c0d43354b5 "TestSCope|||testSecrets"
terraform import databricks_secret_acl.testscope_users "TestSCope|||users"
terraform import databricks_secret_acl.testscope_users "testScope|||users"
terraform import databricks_secret_scope.testsheila_9dc4fe943c "Testsheila"
terraform import databricks_secret_acl.testsheila_sheila_stewart "Testsheila|||sheila.stewart@databricks.com"
terraform import databricks_secret_scope.testsheilaagain1_aa84d79475 "testsheilaagain1"
terraform import databricks_secret_acl.testsheilaagain1_sheila_stewart "testsheilaagain1|||sheila.stewart@databricks.com"
terraform import databricks_user.todd_cowles "6300840171289479"
terraform import databricks_cluster.un_demo_0105_210816_swum644 "0105-210816-swum644"
terraform import databricks_service_principal.unity_west_4705730961836604 "4705730961836604"
terraform import databricks_job.untitled_19 "19"
terraform import databricks_job.untitled_20 "20"
terraform import databricks_job.untitled_21 "21"
terraform import databricks_job.untitled_22 "22"
terraform import databricks_job.untitled_23 "23"
terraform import databricks_job.untitled_24 "24"
terraform import databricks_job.untitled_25 "25"
terraform import databricks_job.untitled_26 "26"
terraform import databricks_job.untitled_27 "27"
terraform import databricks_job.untitled_28 "28"
terraform import databricks_job.untitled_29 "29"
terraform import databricks_job.untitled_30 "30"
terraform import databricks_job.untitled_31 "31"
terraform import databricks_job.untitled_32 "32"
terraform import databricks_job.untitled_33 "33"
terraform import databricks_job.untitled_34 "34"
terraform import databricks_job.untitled_35 "35"
terraform import databricks_job.untitled_36 "36"
terraform import databricks_job.untitled_37 "37"
terraform import databricks_job.untitled_4 "4"
terraform import databricks_job.untitled_6 "6"
terraform import databricks_user.venkata_wunnava "7708847660258208"
terraform import databricks_user.vivek_singh "2159042406187004"
terraform import databricks_job.vw_etl2_373344185305405 "373344185305405"
terraform import databricks_cluster_policy.vw_etl_policy "D963C780D8000528"
terraform import databricks_cluster_policy.vw_etl_policy2 "D963C780D8000587"
terraform import databricks_instance_pool.vw_etl_pool "0223-124714-senna86-pool-29okazrz"
terraform import databricks_instance_pool.vw_etl_pool2 "0227-201742-undid22-pool-pyavl6fz"
terraform import databricks_job.vw_etl_test_466617609222548 "466617609222548"
terraform import databricks_user.william_braccialli "372598947055926"
terraform import databricks_user.zafer_bilaloglu "6670263236332287"
