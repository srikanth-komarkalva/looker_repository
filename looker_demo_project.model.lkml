connection: "redshift"

# include all the views
include: "*.view"

# include all the dashboards
# include: "*.dashboard"

datagroup: looker_demo_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_demo_project_default_datagroup

explore: eu_dataset {}
explore: sample_superstore_redshift {}
explore: demo_dataset {}
