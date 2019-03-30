view: valued_customer {
  derived_table: {
    sql:
        SELECT CUSTOMER_NUMBER, Sum((UNIT_SELLING_PRICE*ORDERED_QUANTITY)) as TOTAL_SALE_AMOUNT
        FROM `cci-customer-360.cci.ERP_ORDERS`
        WHERE CUSTOMER_NUMBER in (SELECT CUSTOMER_NUMBER
                                  FROM `cci-customer-360.cci.ERP_ORDERS`
                                  GROUP BY 1
                                  HAVING Count(ORDER_NUMBER) > 1)
        GROUP BY 1
        HAVING Sum((UNIT_SELLING_PRICE*ORDERED_QUANTITY)) >= 500;;
  }
  dimension: customer_number {

    type: number
    primary_key: yes
    sql: ${TABLE}.customer_number ;;
  }
  measure: total_sale_amount {
    type: sum
    sql: ${TABLE}.total_sale_amount ;;
  }
}
