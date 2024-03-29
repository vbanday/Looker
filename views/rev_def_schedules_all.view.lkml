view: rev_def_schedules_all {
  sql_table_name: ADORB.REV_DEF_SCHEDULES_ALL ;;

  dimension: acct_period {
    type: string
    sql: ${TABLE}.ACCT_PERIOD ;;
  }

  dimension: acct_status {
    type: string
    sql: ${TABLE}.ACCT_STATUS ;;
  }

  dimension: billing_id {
    type: number
    sql: ${TABLE}.BILLING_ID ;;
  }

  dimension_group: billing_trx {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BILLING_TRX_DATE ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.CREATED_BY ;;
  }

  dimension_group: creation {
    type: time
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
    sql: ${TABLE}.CREATION_DATE ;;
  }

  dimension: def_sch_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DEF_SCH_ID ;;
  }

  dimension: entered_amount {
    label: "Billed Revenue"
    type: number
    sql: ${TABLE}.ENTERED_AMOUNT ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.ERROR_MESSAGE ;;
  }

  dimension: inv_trx_line_number {
    type: number
    sql: ${TABLE}.INV_TRX_LINE_NUMBER ;;
  }

  dimension: inv_trx_number {
    type: string
    sql: ${TABLE}.INV_TRX_NUMBER ;;
  }

  dimension: invoice_amount {
    type: number
    sql: ${TABLE}.INVOICE_AMOUNT ;;
  }

  dimension_group: last_update {
    type: time
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
    sql: ${TABLE}.LAST_UPDATE_DATE ;;
  }

  dimension: last_updated_by {
    type: number
    sql: ${TABLE}.LAST_UPDATED_BY ;;
  }

  dimension: legal_entity_id {
    type: number
    sql: ${TABLE}.LEGAL_ENTITY_ID ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: orig_line_id {
    type: number
    sql: ${TABLE}.ORIG_LINE_ID ;;
  }

  dimension: orig_order_id {
    type: number
    sql: ${TABLE}.ORIG_ORDER_ID ;;
  }

  dimension_group: period_from {
    type: time
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
    sql: ${TABLE}.PERIOD_FROM_DATE ;;
  }

  dimension: period_month {
    type: number
    sql: ${TABLE}.PERIOD_MONTH ;;
  }

  dimension: period_quarter {
    type: number
    sql: ${TABLE}.PERIOD_QUARTER ;;
  }

  dimension_group: period_to {
    type: time
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
    sql: ${TABLE}.PERIOD_TO_DATE ;;
  }

  dimension: period_year {
    type: number
    sql: ${TABLE}.PERIOD_YEAR ;;
  }

  dimension_group: recognized {
    type: time
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
    sql: ${TABLE}.RECOGNIZED_DATE ;;
  }

  dimension: recognized_period {
    type: string
    sql: ${TABLE}.RECOGNIZED_PERIOD ;;
  }

  dimension: request_id {
    type: number
    sql: ${TABLE}.REQUEST_ID ;;
  }

  dimension: rev_header_id {
    type: number
    sql: ${TABLE}.REV_HEADER_ID ;;
  }

  dimension: rev_line_id {
    type: number
    sql: ${TABLE}.REV_LINE_ID ;;
  }

  dimension: reversal_sch_id {
    type: number
    sql: ${TABLE}.REVERSAL_SCH_ID ;;
  }

  dimension: sche_type {
    type: string
    sql: ${TABLE}.SCHE_TYPE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.TENANT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: sum_billed_amount {
    type: sum
    sql: ${entered_amount} ;;
    drill_fields: [detail*]
  }


  measure: sum_invoice_amount {
    type: sum
    sql: ${invoice_amount};;
    drill_fields: [detail*]
  }


  measure: Unbilled_Revenue{
    label: "Unbilled Revenue"
    type: number
    sql: ${rev_lines_all.cumulative_net_revenue}-${rev_def_schedules_all.entered_amount};;
    drill_fields: [detail*]
    }


# ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      order_header_all.order_number,
      order_header_all.order_type,
      order_header_all.effective_start_date,
      order_header_all.effective_end_date,
      order_lines_all.line_type,
      rev_lines_all.rev_contract_number,
      rev_lines_all.bill_to_customer_name,
      rev_lines_all.item_name,
      rev_lines_all.ledger_name,
      rev_lines_all.ssp_rule_name,
      rev_lines_all.ssp_group_name,
      rev_lines_all.pob_rule_name,
      rev_lines_all.revenue_amount,
      rev_schedules_all.bill_sch_amt
     ]
  }

}
