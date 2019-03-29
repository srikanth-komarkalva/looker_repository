view: recommendations_real_time_2 {
  sql_table_name: CCI_AIABIGDATA.RECOMMENDATIONS_REAL_TIME_2 ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}.Products ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.Timestamp ;;
  }

  dimension: visitor_id {
    type: number
    sql: ${TABLE}.VisitorID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
