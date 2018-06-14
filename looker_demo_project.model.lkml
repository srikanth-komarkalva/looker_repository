connection: "redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: looker_demo_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_demo_project_default_datagroup

explore: eu_dataset {}

# - explore: atscaletest

# - explore: atscaletest4

# - explore: global_superstore

# - explore: global_superstore_0613

# - explore: globalsuperstore_csv_1k

# - explore: globalsuperstore_csv_1k_data

# - explore: salesdata

# - explore: samplesuperstore100rows

# - explore: samplesuperstore_500rows

# - explore: samplesuperstore_latest
