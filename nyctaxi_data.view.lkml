view: nyctaxi_data {
  sql_table_name: LookerBI.NYCTaxi_data ;;

  dimension: dropoff_datetime {
    type: date
    sql: ${TABLE}.dropoff_datetime ;;
  }

#  dimension: dropoff_latitude {
#    type: string
#    sql: ${TABLE}.dropoff_latitude ;;
#  }

#  dimension: dropoff_longitude {
#    type: string
#    sql: ${TABLE}.dropoff_longitude ;;
#  }

 dimension: dropoff_location {
    type: location
    sql_latitude: ${TABLE}.dropoff_latitude ;;
    sql_longitude: ${TABLE}.dropoff_longitude ;;
  }



  dimension: hack_license {
    type: string
    sql: ${TABLE}.hack_license ;;
  }

  dimension: medallion {
    type: string
    sql: ${TABLE}.medallion ;;
  }

  dimension: pickup_datetime {
    type: date
    sql: ${TABLE}.pickup_datetime ;;
  }

#  dimension: pickup_latitude {
#    type: string
#    sql: ${TABLE}.pickup_latitude ;;
#  }

#  dimension: pickup_longitude {
#    type: string
#    sql: ${TABLE}.pickup_longitude ;;
#  }

  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendor_id ;;
  }

  dimension: pickup_location {
     type: location
     sql_latitude: ${TABLE}.pickup_latitude ;;
     sql_longitude: ${TABLE}.pickup_longitude ;;
  }

  dimension: rate_code {
    type: number
    sql: ${TABLE}.rate_code ;;
  }

  dimension: store_and_fwd_flag {
    type: string
    sql: ${TABLE}.store_and_fwd_flag ;;
  }

  measure: trip_distance {
    type: sum
    sql: ${TABLE}.trip_distance ;;
  }

  measure: trip_time_in_secs {
    type: sum
    sql: ${TABLE}.trip_time_in_secs ;;
  }

  measure: passenger_count {
    type: sum
    sql: ${TABLE}.passenger_count ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
