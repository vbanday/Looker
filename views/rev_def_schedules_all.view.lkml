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
    type: number
    sql: ${TABLE}.DEF_SCH_ID ;;
  }

  dimension: entered_amount {
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
    drill_fields: []
  }
}
