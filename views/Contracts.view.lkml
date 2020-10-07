view: contracts{

  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql:   SELECT source.meaning source,
         oha.order_number,
         otl.meaning  order_type,
          ohst.meaning order_status,
         category.meaning order_category,
         oha.customer_po_number po_number,
         oha.effective_start_date order_start_date,
         oha.effective_end_date order_end_date,
         oha.creation_date order_creation_date,
         oha.booked_date order_booked_date,
         bu.name business_unit,
         curr.name currency,
         inte.meaning intent,
         art.name payment_term,
         prl.name price_list,
         ola.line_number,
         llt.meaning line_type,
         olst.meaning line_status,
         prd.item_name ,
         prd.item_description,
         libs.meaning line_billing_status,
         ola.effective_start_date line_start_date,
         ola.effective_start_date line_end_date,
         ola.evergreen_flag,
         ola.creation_date line_creation_date,
         ola.booked_date line_booked_date,
         lbcy.meaning billing_cycle,
         lbfr.meaning billing_frequency,
         lir.description invoicing_rule,
         ola.accounting_rule accountingrule,
         lbcus.account_number,
         lbcus.account_name,
         lbsit.site_number,
         bsa.billing_period_from,
         bsa.billing_period_to,
         bsa.invoice_date billing_date,
         bsa.trx_date,
         bsa.gl_date,
         bsa.trx_type,
         blt.meaning billing_line_type,
         bss.meaning billing_sch_status,
         bsa.period_month,
         bsa.fiscal_year,
         bsa.fiscal_quarter,
         bsa.fiscal_month,
         bsa.cal_year,
         bsa.cal_quarter,
         bsa.cal_month,
         bsa.quantity,
         bsa.unit_price,
         bsa.total_amount,
         bsa.total_billing_amount
    FROM adorb.order_header_all oha,
         adorb.order_lines_all ola,
         adorb.business_units bu,
         adorb.core_lookup_values source,
         adorb.core_currencies_tl curr,
         adorb.price_list_headers prl,
         adorb.core_lookup_values category,
         adorb.order_types_all otl,
         adorb.core_lookup_values inte,
         adorb.ar_terms_tl art,
         adorb.core_lookup_values olst,
         adorb.core_lookup_values ohst,
         adorb.product_master_all prd,
         adorb.core_lookup_values llt,
         adorb.core_lookup_values libs,
         adorb.core_lookup_values lbcy,
         adorb.core_lookup_values lbfr,
         adorb.core_lookup_values blt,
         adorb.core_lookup_values bss,
         adorb.cust_accounts lbcus,
         adorb.cust_acct_sites_all lbsit,
         adorb.ar_invoicing_rule_v lir,
         adorb.billing_schedules_all bsa
   WHERE  1=1
         AND oha.order_id = ola.order_id
         AND oha.org_id = bu.org_id
         AND ola.org_id = bu.org_id
         AND oha.orig_order_id IS NULL
         AND oha.cr IS NULL
         AND source.lookup_code = oha.source_id
         AND source.lookup_type = 'SOURCE_TYPES'
         AND oha.currency = curr.currency_code
         AND prl.price_list_id = oha.price_list_id(+)
         AND category.lookup_code = oha.order_category
         AND category.lookup_type = 'ORDER_CATEGORY'
         AND oha.order_type = otl.order_type
         AND olst.lookup_type = 'ORDER_LINE_STATUS'
         AND ola.status = olst.lookup_code
         AND ohst.lookup_type = 'ORDER_STATUS'
         AND oha.status = ohst.lookup_code
         AND inte.lookup_type = 'INTENT'
         AND oha.intent = inte.lookup_code
         AND oha.payment_term = art.term_id
         AND ola.item_id = prd.item_id
         AND llt.lookup_type = 'LINE_TYPE'
         AND ola.line_type = llt.lookup_code
         AND libs.lookup_type = 'LINE_BILLING_STATUS'
         AND ola.billing_status = libs.lookup_code
         AND lbcy.lookup_type = 'BILLING_CYCLE'
         AND ola.billing_cycle = lbcy.lookup_code
         AND lbfr.lookup_type = 'BILLING_FREQUENCY'
         AND ola.billing_frequency = lbfr.lookup_code
         AND blt.lookup_type = 'BILLING_LINE_TYPE'
         AND bsa.billing_line_type = blt.lookup_code
         AND bss.lookup_type = 'BILL_SCH_STATUS'
         AND bsa.billing_status = bss.lookup_code
         AND ola.bill_to_customer_id = lbcus.cust_account_id
         AND lbcus.cust_account_id = lbsit.cust_account_id
         AND ola.bill_to_site_id = lbsit.cust_acct_site_id
         AND lbsit.purpose = 'BILL_TO'
         AND lir.invoicing_rule = ola.invoicing_rule
         AND lir.tenant_id = ola.tenant_id
         AND oha.order_id=bsa.order_id(+)
         AND ola.line_id=bsa.line_id(+)
ORDER BY oha.order_number, ola.line_number
       ;;
  }

dimension: source
  {type: string
    sql:${TABLE}. source;;}

  dimension: order_number
  {type: string
    sql:${TABLE}. order_number;;}

  dimension: order_type
  {type: string
    sql:${TABLE}. order_type;;}

  dimension: order_status
  {type: string
    sql:${TABLE}. order_status;;}

  dimension: order_category
  {type: string
    sql:${TABLE}. order_category;;}

  dimension: po_number
  {type: string
    sql:${TABLE}. po_number;;}

  dimension_group: order_start_date
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}.order_start_date;;}

  dimension_group: order_end_date
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}. order_end_date;;}

  dimension: business_unit
  {type: string
    sql:${TABLE}. business_unit;;}

  dimension: currency
  {type: string
    sql:${TABLE}. currency;;}

  dimension: intent
  {type: string
    sql:${TABLE}. intent;;}

  dimension: payment_term
  {type: string
    sql:${TABLE}. payment_term;;}

  dimension: price_list
  {type: string
    sql:${TABLE}. price_list;;}

  dimension: line_number
  {type: number
    sql:${TABLE}. line_number;;}

  dimension: line_type
  {type: string
    sql:${TABLE}. line_type;;}

  dimension: line_status
  {type: string
    sql:${TABLE}. line_status;;}

  dimension: item_name
  {type: string
    sql:${TABLE}. item_name;;}

  dimension: item_description
  {type: string
    sql:${TABLE}. item_description;;}

  dimension: line_billing_status
  {type: string
    sql:${TABLE}. line_billing_status;;}

  dimension_group: line_start_date
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}. line_start_date;;}

  dimension_group: line_end_date
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}. line_end_date;;}

  dimension: evergreen_flag
  {type: string
    sql:${TABLE}. evergreen_flag;;}


  dimension: billing_cycle
  {type: string
    sql:${TABLE}. billing_cycle;;}

  dimension: billing_frequency
  {type: string
    sql:${TABLE}. billing_frequency;;}

  dimension: invoicing_rule
  {type: string
    sql:${TABLE}. invoicing_rule;;}

  dimension: accountingrule
  {type: string
    sql:${TABLE}. accountingrule;;}

  dimension: account_number
  {type: string
    sql:${TABLE}. account_number;;}

  dimension: account_name
  {type: string
    sql:${TABLE}. account_name;;}

  dimension: site_number
  {type: string
    sql:${TABLE}. site_number;;}
  dimension_group: order_creation_date
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}. order_creation_date;;}

  dimension_group: order_booked_date
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}. order_booked_date;;}

  dimension_group: line_creation_date
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}. line_creation_date;;}

  dimension_group: line_booked_date
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}. line_booked_date;;}

  dimension_group: billing_period_from
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}. billing_period_from;;}

  dimension_group: billing_period_to
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}. billing_period_to;;}

  dimension_group: billing_date
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}. billing_date;;}

  dimension_group: trx_date
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}. trx_date;;}

  dimension_group: gl_date
  {type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:${TABLE}. gl_date;;}

  dimension: trx_type
  {type: string
    sql:${TABLE}. trx_type;;}

  dimension: billing_line_type
  {type: string
    sql:${TABLE}. billing_line_type;;}

  dimension: billing_sch_status
  {type: string
    sql:${TABLE}. billing_sch_status;;}

  dimension: period_month
  {type: string
    sql:${TABLE}. period_month;;}

  dimension: fiscal_year
  {type: number
    sql:${TABLE}. fiscal_year;;}

  dimension: fiscal_quarter
  {type: number
    sql:${TABLE}. fiscal_quarter;;}

  dimension: fiscal_month
  {type: number
    sql:${TABLE}. fiscal_month;;}

  dimension: cal_year
  {type: number
    sql:${TABLE}. cal_year;;}

  dimension: cal_quarter
  {type: number
    sql:${TABLE}. cal_quarter;;}

  dimension: cal_month
  {type: number
    sql:${TABLE}. cal_month;;}

  dimension: quantity
  {type: number
    sql:${TABLE}. quantity;;}

  dimension: unit_price
  {type: number
    sql:${TABLE}. unit_price;;}

  dimension: total_amount
  {type: number
    sql:${TABLE}. total_amount;;
    }

  dimension: total_billing_amount
  {type: number
    sql:${TABLE}. total_billing_amount;;}

  measure: sum_order_total_amount {
    type: sum
    sql: ${total_amount} ;;
  }

  measure: order_count {
    type: count_distinct
    sql: ${order_number} ;;
    drill_fields: [orders*]
  }
  measure: sum_order_number {
    type: count_distinct
    sql: ${order_number} ;;
    drill_fields: [lines*]
  }

  measure: sum_total_quantity {
    type: sum
    sql: ${quantity} ;;
    drill_fields: [source
         ,business_unit
         ,order_number
         ,order_type
         ,order_status
         ,order_category
         ,po_number
         ,currency
         ,intent
         ,payment_term
         ,item_name
         ,item_description
         ,account_number
         ,account_name
         ,quantity
         ,sum_total_amount]
  }

  measure: sum_total_amount {
    type: sum
    sql: ${total_amount} ;;
    drill_fields: [source
         ,business_unit
         ,order_number
         ,order_type
         ,order_status
         ,order_category
         ,po_number
         ,currency
         ,intent
         ,payment_term
         ,account_number
         ,account_name
         ,quantity
         ,sum_total_amount]
  }

  measure: sum_total_billing_amount {
    type: sum
    sql: ${total_billing_amount} ;;
    drill_fields: [source
         ,business_unit
         ,order_number
         ,order_type
         ,order_status
         ,order_category
         ,po_number
         ,currency
         ,intent
         ,payment_term
         ,line_number
         ,line_type
         ,line_status
         ,item_name
         ,item_description
         ,line_billing_status
         ,evergreen_flag
         ,billing_cycle
         ,billing_frequency
         ,invoicing_rule
         ,accountingrule
         ,account_number
         ,account_name
         ,site_number
         ,sum_total_amount]
  }


  set: orders {
    fields: [ source
         ,business_unit
         ,order_number
         ,order_type
         ,order_status
         ,order_category
         ,po_number
         ,currency
         ,intent
         ,payment_term
         ,price_list
         ,account_number
         ,account_name
         ,sum_order_total_amount]
 }

  set: lines {
    fields: [line_number
         ,line_type
         ,line_status
         ,item_name
         ,item_description
         ,line_billing_status
         ,evergreen_flag
         ,billing_cycle
         ,billing_frequency
         ,invoicing_rule
         ,accountingrule
         ,account_number
         ,account_name
         ,site_number
         ,sum_total_amount]
  }



    #contract, customer

  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: contract_management {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
