connection: "cci_gcp"

# include all the views
include: "*.view"

datagroup: cci_looker_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cci_looker_demo_default_datagroup

explore: erp_orders {

  always_filter: {
    filters: {
      field: ga_all.channel_group
      value: "NULL"
    }
  }

  join: crm_ga_bridge {
    type:  left_outer
    sql_on: ${erp_orders.customer_number} = ${crm_ga_bridge.customer_id}  ;;
    relationship: one_to_one
  }

  join: s_preferences {
    type: left_outer
    sql_on: ${erp_orders.customer_number} = ${s_preferences.customer_id} ;;
    relationship: one_to_one
  }

  join: s_contact {
    type: left_outer
    sql_on: ${erp_orders.customer_number} = ${s_contact.customer_id} ;;
    relationship: one_to_one
  }

  join: s_party_membership {
    type: left_outer
    sql_on: ${erp_orders.customer_number} = ${s_party_membership.customer_id}  ;;
    relationship: one_to_one
  }

  join: s_behaviour {
    type: left_outer
    sql_on: ${erp_orders.customer_number} = ${s_behaviour.customer_id} ;;
    relationship: one_to_one
  }

  join: s_product  {
    type: left_outer
    sql_on: ${erp_orders.product_id} = ${s_product.uniq_id}  ;;
    relationship: one_to_one
  }

  join: ga_all {
    type: left_outer
    sql_on: ${erp_orders.product_id} = ${ga_all.product_id} ;;
    relationship: one_to_one
  }

    join: purchase {
    type: left_outer
    sql_on: ${erp_orders.customer_number} = ${purchase.customer_id} ;;
    relationship: one_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${erp_orders.customer_number} = ${customer.customer_id} ;;
    relationship: one_to_one
  }

  join: s_addr_per {
    type: left_outer
    sql_on: ${erp_orders.customer_number} = ${s_addr_per.customer_id} ;;
    relationship: one_to_one
  }

  join: store_customer {
    type: left_outer
    sql_on: ${erp_orders.customer_number} = ${store_customer.customer_id} ;;
    relationship: one_to_one
  }

  join: stores {
    type: left_outer
    sql_on: ${store_customer.store_id} = ${stores.store_id} ;;
    relationship: one_to_one
  }

  join: customer_purchase_data {
    type: left_outer
    sql_on: ${erp_orders.customer_number} = ${customer_purchase_data.customer_id} ;;
    relationship: one_to_one
  }

  join: customer_device {
    type: left_outer
    sql_on: ${erp_orders.customer_number} = ${customer_device.customer_id} ;;
    relationship: one_to_one
  }

  join: recommendations_real_time {
    type: inner
    sql_on: ${erp_orders.customer_number} = ${recommendations_real_time.customer_id} ;;
    relationship: one_to_one
  }

  join: repeat_customer {
    type:  inner
    sql_on: ${repeat_customer.customer_number} = ${erp_orders.customer_number}  ;;
    relationship: one_to_one
  }

  join: valued_customer {
    type:  inner
    sql_on: ${valued_customer.customer_number} = ${erp_orders.customer_number}  ;;
    relationship: one_to_one
  }


}
