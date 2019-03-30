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
    sql: ${TABLE}.customer_number ;;
  }
  dimension: order_count {
    type: number
    sql: ${TABLE}.order_count ;;
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      s_contact.first_name,
      s_contact.last_name,
      s_contact.customer_since
    ]
  }

}
