view: eu_dataset {
  sql_table_name: redshift15.eu_dataset ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension_group: order {
    type: time
    timeframes: [year,month,date]
    sql: TO_DATE(${TABLE}.order_date,'DD-MM-YYYY') ;;
  }

 dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

    dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: row_id {
    type: number
    sql: ${TABLE}.row_id ;;
  }

 dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }

  dimension: ship_date {
    type: string
    sql: ${TABLE}.ship_date ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}.ship_mode ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.sub_category ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name]
  }

  measure: profit {
    type: sum
    description:  "Total Profit"
    value_format: "0.000,,\" K\""
    sql: ${TABLE}.profit ;;
  }

  measure: quantity {
    type: sum
    sql: ${TABLE}.quantity ;;
  }

  measure: discount {
    type: sum
    sql: ${TABLE}.discount ;;
  }

  measure: sales {
    type: sum
    description: "Total Sales"
    value_format: "0.000,,\" M\""
    sql: ${TABLE}.sales ;;
  }
}
