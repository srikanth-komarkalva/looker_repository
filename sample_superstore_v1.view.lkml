view: sample_superstore_v1 {
  sql_table_name: redshift15.sample_superstore_v1 ;;

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

  dimension: order_date {
    type: string
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
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

  measure: discount {
    type: sum
    sql: ${TABLE}.discount
    value_format_name: usd ;;
  }

  measure: sales {
    type: sum
    sql: ${TABLE}.sales
    value_format_name: decimal_0 ;;
  }


  measure: profit {
    type: string
    sql: ${TABLE}.profit
    value_format_name: id;;
  }

  measure: quantity {
    type: string
    sql: ${TABLE}.quantity
    value_format_name: decimal_0;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, customer_name]
  }
}
