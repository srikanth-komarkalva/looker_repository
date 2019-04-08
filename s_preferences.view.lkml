view: s_preferences {
  sql_table_name: cci.S_PREFERENCES ;;

  dimension: contact_channel_preference {
    type: string
    sql: ${TABLE}.Contact_Channel_Preference ;;
  }

  dimension: contact_time_preference {
    type: string
    sql: ${TABLE}.Contact_Time_Preference ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: data_privacy_consent_ind {
    type: yesno
    sql: ${TABLE}.DataPrivacyConsentInd ;;
  }

  dimension: email_promotion {
    type: yesno
    sql: ${TABLE}.Email_Promotion ;;
  }

  dimension: email_service {
    type: yesno
    sql: ${TABLE}.Email_Service ;;
  }

  dimension: letter_promotion {
    type: yesno
    sql: ${TABLE}.Letter_Promotion ;;
  }

  dimension: letter_service {
    type: yesno
    sql: ${TABLE}.Letter_Service ;;
  }

  dimension: mobile_promotion {
    type: yesno
    sql: ${TABLE}.Mobile_Promotion ;;
  }

  dimension: mobile_service {
    type: yesno
    sql: ${TABLE}.Mobile_Service ;;
  }

  dimension: phone_promotion {
    type: yesno
    sql: ${TABLE}.Phone_Promotion ;;
  }

  dimension: phone_service {
    type: yesno
    sql: ${TABLE}.Phone_Service ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}.ROW_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

#  dimension: Promotion
#  {
#    type: string
#    sql:  { % if ( ${TABLE}.Letter_Promotion == "Yes" Or ${TABLE}.Email_Promotion == "Yes" or  ${TABLE}.Phone_Promotion == "Yes" or ${TABLE}.Mobile_Promotion == "Yes") % }
#    "Promotion Applied"
#    {% else %}
#    "No Promotion"
#    {% endif %}
#   ;;
#    }

dimension: Promotion_Type
{
  sql: case
  when ${TABLE}.Letter_Promotion is true THEN 'Letter'
  when ${TABLE}.Email_Promotion is true THEN 'Email'
  when ${TABLE}.Mobile_Promotion is true THEN 'Mobile'
  when ${TABLE}.Phone_Promotion is true THEN 'Phone'
  ELSE 'Walk-in'
  END

  ;;

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
