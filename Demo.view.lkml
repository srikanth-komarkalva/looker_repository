view: Demo {
  sql_table_name: redshift15.sample_superstore_redshift ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension_group: order_ {
    type: time
    timeframes: [year,month,date]
    sql: TO_DATE(${TABLE}.order_date,'DD-MM-YYYY');;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
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

  dimension: sub_category {
    type: string
    sql: ${TABLE}.sub_category ;;
  }

#demographics
  dimension: city {
    sql: ${TABLE}.city
      ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    drill_fields: [state, city]
    sql: ${TABLE}.country ;;
  }

  dimension: postal_code {
    type: zipcode
    sql: ${TABLE}.postal_code ;;
  }

  dimension: state {
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }

##################
  measure: count {
    type: count
    drill_fields: [product_name, customer_name]
  }

  measure: discount {
    type: sum
    sql: ${TABLE}.discount
      ;;
  }

  measure: sales {
    type: sum
    sql: ${TABLE}.sales
      ;;
  }

  measure: profit {
    type: sum
    description:  "Total Profit"
    value_format: "0.000,,\" M\""
    sql: ${TABLE}.profit
      ;;
  }

  measure: quantity {
    type: sum
    sql: ${TABLE}.quantity
      ;;
  }

  measure: profit_ratio {
    type: average
    sql: (${TABLE}.sum(profit) / ${TABLE}.sum(sales))
      ;;
  }
}
