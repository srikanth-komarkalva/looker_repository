view: nyctaxi_data {
  sql_table_name: LookerBI.NYCTaxi_data ;;

  dimension: dropoff_datetime {
    type: string
    sql: ${TABLE}.dropoff_datetime ;;
  }

  dimension: dropoff_latitude {
    type: string
    sql: ${TABLE}.dropoff_latitude ;;
  }

  dimension: dropoff_longitude {
    type: string
    sql: ${TABLE}.dropoff_longitude ;;
  }

  dimension: hack_license {
    type: string
    sql: ${TABLE}.hack_license ;;
  }

  dimension: medallion {
    type: string
    sql: ${TABLE}.medallion ;;
  }

  dimension: passenger_count {
    type: string
    sql: ${TABLE}.passenger_count ;;
  }

  dimension: pickup_datetime {
    type: string
    sql: ${TABLE}.pickup_datetime ;;
  }

  dimension: pickup_latitude {
    type: string
    sql: ${TABLE}.pickup_latitude ;;
  }

  dimension: pickup_longitude {
    type: string
    sql: ${TABLE}.pickup_longitude ;;
  }

  dimension: rate_code {
    type: string
    sql: ${TABLE}.rate_code ;;
  }

  dimension: store_and_fwd_flag {
    type: string
    sql: ${TABLE}.store_and_fwd_flag ;;
  }

  dimension: trip_distance {
    type: string
    sql: ${TABLE}.trip_distance ;;
  }

  dimension: trip_time_in_secs {
    type: string
    sql: ${TABLE}.trip_time_in_secs ;;
  }

  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendor_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
