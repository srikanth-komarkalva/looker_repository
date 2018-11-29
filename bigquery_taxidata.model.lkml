connection: "bigquery_cognizant"

# include all the views
include: "*.view"

datagroup: bigquery_taxidata_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bigquery_taxidata_default_datagroup
explore: nyctaxi_data {}
