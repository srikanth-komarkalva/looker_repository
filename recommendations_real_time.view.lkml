view: recommendations_real_time {
  sql_table_name: CCI_AIABIGDATA.RECOMMENDATIONS_REAL_TIME ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}.Products ;;
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
