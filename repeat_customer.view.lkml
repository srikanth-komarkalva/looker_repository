view: repeat_customer {
  derived_table: {
    sql:
        SELECT CUSTOMER_NUMBER, Count(ORDER_NUMBER) as ORDER_COUNT
        FROM `cci-customer-360.cci.ERP_ORDERS`
        GROUP BY 1
        HAVING Count(ORDER_NUMBER) > 1;;
  }

  dimension: customer_number {
    type: number
    primary_key: yes
    sql: ${TABLE}.customer_number;;
    drill_fields: [detail*]
  }

  dimension: customer_name {
    type:  string
    sql: concat(s_contact.first_name," ",s_contact.last_name) ;;
    drill_fields: [detail*]
  }

  dimension: order_count {
    type: number
    sql: ${TABLE}.order_count;;
    drill_fields: [detail*]

  }

  set: detail {
    fields: [customer_number]
  }

}
