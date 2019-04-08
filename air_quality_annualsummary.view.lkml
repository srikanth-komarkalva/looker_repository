view: air_quality_annualsummary {
  sql_table_name: LookerBI.Air_Quality_Annualsummary ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: arithmetic_mean {
    type: number
    sql: ${TABLE}.arithmetic_mean ;;
  }

  dimension: arithmetic_standard_dev {
    type: number
    sql: ${TABLE}.arithmetic_standard_dev ;;
  }

  dimension: cbsa_name {
    type: string
    sql: ${TABLE}.cbsa_name ;;
  }

  dimension: certification_indicator {
    type: string
    sql: ${TABLE}.certification_indicator ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }

  dimension: completeness_indicator {
    type: string
    sql: ${TABLE}.completeness_indicator ;;
  }

  dimension: county_code {
    type: string
    sql: ${TABLE}.county_code ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension_group: date_of_last_change {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_last_change ;;
  }

  dimension: datum {
    type: string
    sql: ${TABLE}.datum ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: exceptional_data_count {
    type: number
    sql: ${TABLE}.exceptional_data_count ;;
  }

  dimension: fifty_percentile {
    type: number
    sql: ${TABLE}.fifty_percentile ;;
  }

  dimension_group: first_max_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_max_datetime ;;
  }

  dimension: first_max_non_overlapping_value {
    type: number
    sql: ${TABLE}.first_max_non_overlapping_value ;;
  }

  dimension: first_max_value {
    type: number
    sql: ${TABLE}.first_max_value ;;
  }

  dimension_group: first_no_max_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_no_max_datetime ;;
  }

  dimension_group: fourth_max_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.fourth_max_datetime ;;
  }

  dimension: fourth_max_value {
    type: number
    sql: ${TABLE}.fourth_max_value ;;
  }

 # dimension: latitude {
#    type: location
#    sql_latitude: ${TABLE}.latitude ;;
#  }

  dimension: local_site_name {
    type: string
    sql: ${TABLE}.local_site_name ;;
  }

  dimension: longitude {
    type: location
    sql_longitude: ${TABLE}.longitude;;
    sql_latitude: ${TABLE}.latitude ;;
  }

  dimension: method_name {
    type: string
    sql: ${TABLE}.method_name ;;
  }

  dimension: metric_used {
    type: string
    sql: ${TABLE}.metric_used ;;
  }

  dimension: ninety_eight_percentile {
    type: number
    sql: ${TABLE}.ninety_eight_percentile ;;
  }

  dimension: ninety_five_percentile {
    type: number
    sql: ${TABLE}.ninety_five_percentile ;;
  }

  dimension: ninety_nine_percentile {
    type: number
    sql: ${TABLE}.ninety_nine_percentile ;;
  }

  dimension: ninety_percentile {
    type: number
    sql: ${TABLE}.ninety_percentile ;;
  }

  dimension: null_data_count {
    type: number
    sql: ${TABLE}.null_data_count ;;
  }

  dimension: num_obs_below_mdl {
    type: number
    sql: ${TABLE}.num_obs_below_mdl ;;
  }

  dimension: observation_count {
    type: number
    sql: ${TABLE}.observation_count ;;
  }

  dimension: observation_percent {
    type: number
    sql: ${TABLE}.observation_percent ;;
  }

  dimension: parameter_code {
    type: number
    sql: ${TABLE}.parameter_code ;;
  }

  dimension: parameter_name {
    type: string
    sql: ${TABLE}.parameter_name ;;
  }

  dimension: poc {
    type: number
    sql: ${TABLE}.poc ;;
  }

  dimension: pollutant_standard {
    type: string
    sql: ${TABLE}.pollutant_standard ;;
  }

  dimension: primary_exceedance_count {
    type: number
    sql: ${TABLE}.primary_exceedance_count ;;
  }

  dimension: required_day_count {
    type: number
    sql: ${TABLE}.required_day_count ;;
  }

  dimension: sample_duration {
    type: string
    sql: ${TABLE}.sample_duration ;;
  }

  dimension_group: second_max_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.second_max_datetime ;;
  }

  dimension: second_max_non_overlapping_value {
    type: number
    sql: ${TABLE}.second_max_non_overlapping_value ;;
  }

  dimension: second_max_value {
    type: number
    sql: ${TABLE}.second_max_value ;;
  }

  dimension_group: second_no_max_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.second_no_max_datetime ;;
  }

  dimension: secondary_exceedance_count {
    type: number
    sql: ${TABLE}.secondary_exceedance_count ;;
  }

  dimension: seventy_five_percentile {
    type: number
    sql: ${TABLE}.seventy_five_percentile ;;
  }

  dimension: site_num {
    type: string
    sql: ${TABLE}.site_num ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.state_code ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: ten_percentile {
    type: number
    sql: ${TABLE}.ten_percentile ;;
  }

  dimension_group: third_max_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.third_max_datetime ;;
  }

  dimension: third_max_value {
    type: number
    sql: ${TABLE}.third_max_value ;;
  }

  dimension: units_of_measure {
    type: string
    sql: ${TABLE}.units_of_measure ;;
  }

  dimension: valid_day_count {
    type: number
    sql: ${TABLE}.valid_day_count ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      local_site_name,
      method_name,
      state_name,
      cbsa_name,
      city_name,
      parameter_name,
      county_name
    ]
  }
}
