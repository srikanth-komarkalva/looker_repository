view: physician_data_2015 {
  sql_table_name: cts_datalake.Physician_data_2015 ;;

  measure: average_medicare_allowed_amt {
    type: sum
    sql: ${TABLE}.average_medicare_allowed_amt ;;
  }

  dimension: average_medicare_payment_amt {
    type: number
    sql: ${TABLE}.average_medicare_payment_amt ;;
  }

  dimension: average_medicare_standard_amt {
    type: number
    sql: ${TABLE}.average_medicare_standard_amt ;;
  }

  dimension: average_submitted_chrg_amt {
    type: number
    sql: ${TABLE}.average_submitted_chrg_amt ;;
  }

  dimension: bene_day_srvc_cnt {
    type: number
    sql: ${TABLE}.bene_day_srvc_cnt ;;
  }

  dimension: bene_unique_cnt {
    type: number
    sql: ${TABLE}.bene_unique_cnt ;;
  }

  dimension: hcpcs_code {
    type: string
    sql: ${TABLE}.hcpcs_code ;;
  }

  dimension: hcpcs_description {
    type: string
    sql: ${TABLE}.hcpcs_description ;;
  }

  dimension: hcpcs_drug_indicator {
    type: string
    sql: ${TABLE}.hcpcs_drug_indicator ;;
  }

  dimension: line_srvc_cnt {
    type: number
    sql: ${TABLE}.line_srvc_cnt ;;
  }

  dimension: medicare_participation_indicator {
    type: string
    sql: ${TABLE}.medicare_participation_indicator ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}.npi ;;
  }

  dimension: nppes_credentials {
    type: string
    sql: ${TABLE}.nppes_credentials ;;
  }

  dimension: nppes_entity_code {
    type: string
    sql: ${TABLE}.nppes_entity_code ;;
  }

  dimension: nppes_provider_city {
    type: string
    sql: ${TABLE}.nppes_provider_city ;;
  }

  dimension: nppes_provider_country {
    type: string
    sql: ${TABLE}.nppes_provider_country ;;
  }

  dimension: nppes_provider_first_name {
    type: string
    sql: ${TABLE}.nppes_provider_first_name ;;
  }

  dimension: nppes_provider_gender {
    type: string
    sql: ${TABLE}.nppes_provider_gender ;;
  }

  dimension: nppes_provider_last_org_name {
    type: string
    sql: ${TABLE}.nppes_provider_last_org_name ;;
  }

  dimension: nppes_provider_mi {
    type: string
    sql: ${TABLE}.nppes_provider_mi ;;
  }

  dimension: nppes_provider_state {
    type: string
    sql: ${TABLE}.nppes_provider_state ;;
  }

  dimension: nppes_provider_street1 {
    type: string
    sql: ${TABLE}.nppes_provider_street1 ;;
  }

  dimension: nppes_provider_street2 {
    type: string
    sql: ${TABLE}.nppes_provider_street2 ;;
  }

  dimension: nppes_provider_zip {
    type: string
    sql: ${TABLE}.nppes_provider_zip ;;
  }

  dimension: place_of_service {
    type: string
    sql: ${TABLE}.place_of_service ;;
  }

  dimension: provider_type {
    type: string
    sql: ${TABLE}.provider_type ;;
  }

  measure: count {
    type: count
    drill_fields: [nppes_provider_first_name, nppes_provider_last_org_name]
  }
}
