view: repeat_customer {
  derived_table: {
    sql:
        SELECT CUSTOMER_NUMBER, Count(ORDER_NUMBER) as ORDER_COUNT,
        concat(s_contact.first_name," ",s_contact.last_name) as customer_name
        FROM `cci-customer-360.cci.ERP_ORDERS` inner join `cci-customer-360.cci.S_CONTACT` s_contact
        on `cci-customer-360.cci.ERP_ORDERS`.customer_numbers = `cci-customer-360.cci.S_CONTACT`.customer_id
        GROUP BY 1
        HAVING Count(ORDER_NUMBER) > 1;;
  }
  dimension: customer_number {
    type: number
    primary_key: yes
    sql: ${TABLE}.customer_number
    drill_fields: [detail*];;
  }

  dimension: customer_name {
    type:  string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: order_count {
    type: number
    sql: ${TABLE}.order_count
    drill_fields: [detail*];;

  }

  set: detail {
    fields: [
      customer_name
    ]
  }

}
