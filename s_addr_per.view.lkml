view: s_addr_per {
  sql_table_name: cci.S_ADDR_PER ;;

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
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_location {
    type: location
    sql_latitude: ${TABLE}.latitude;;
    sql_longitude: ${TABLE}.longitude;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: post_code {
    type: number
    sql: ${TABLE}.post_code ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}.ROW_ID ;;
  }

  dimension: state {
    sql: ${TABLE}.state ;;
    map_layer_name: us_states
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.street_address ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      customer.firstname,
      customer.customer_id,
      customer.middlename,
      customer.lastname,
      customer.suffixname,
      customer.prefixname,
      customer.fullname
    ]
  }
}
