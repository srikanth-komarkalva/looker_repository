connection: "redshift"

# include all the views
include: "*.view"

datagroup: demo_redshift_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_redshift_default_datagroup

explore: sample_superstore_redshift {}

# - explore: atscaletest

# - explore: atscaletest4

# - explore: bfsmockdata

# - explore: claims

# - explore: claimsdata

# - explore: economy_data

# - explore: eu_dataset

# - explore: eu_superstore_csv

# - explore: eu_superstore_csv_24706

# - explore: global_superstore

# - explore: global_superstore_0613

# - explore: global_superstore_da_18737

# - explore: global_superstore_data

# - explore: global_superstore_data_1k

# - explore: global_superstore_data_newdata

# - explore: global_superstore_data_small

# - explore: global_superstore_dataset

# - explore: globalsuperstore_csv_1k

# - explore: globalsuperstore_csv_1k_data

# - explore: logisticssampledata

# - explore: salesdata

# - explore: salesjan_100rows

# - explore: sample_superstore_csv

# - explore: sample_superstore_v1

# - explore: samplesuperstore100rows

# - explore: samplesuperstore_500rows

# - explore: samplesuperstore_latest

# - explore: travelandhospitality_11994

# - explore: travelandhospitalitysample

# - explore: travelandhospitalitysampledata

# - explore: travelhospitalityhotelelig

# - explore: travelhospitalitylob

# - explore: travelhospitalitylob_14007
