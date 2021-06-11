view: rev_schedules_all {
  sql_table_name: ADORB.REV_SCHEDULES_ALL ;;

  dimension: accounting_batch {
    type: string
    sql: ${TABLE}.ACCOUNTING_BATCH ;;
  }

  dimension_group: accounting {
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
    sql: ${TABLE}.ACCOUNTING_DATE ;;
  }

  dimension: accounting_in_process {
    type: string
    sql: ${TABLE}.ACCOUNTING_IN_PROCESS ;;
  }

  dimension: acct_status {
    type: string
    sql: ${TABLE}.ACCT_STATUS ;;
  }

  dimension: actual_amount {
    type: number
    sql: ${TABLE}.ACTUAL_AMOUNT ;;
  }

  measure: sum_actual_amount {
    type: sum
    sql: ${actual_amount} ;;
    drill_fields: [detail*]
  }

  dimension: adjustment_liability_acct {
    type: string
    sql: ${TABLE}.ADJUSTMENT_LIABILITY_ACCT ;;
  }

  dimension: applied_contingency_reason {
    type: string
    sql: ${TABLE}.APPLIED_CONTINGENCY_REASON ;;
  }

  dimension: attribute10_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE10_V ;;
  }

  dimension: attribute11_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE11_V ;;
  }

  dimension: attribute12_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE12_V ;;
  }

  dimension: attribute13_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE13_V ;;
  }

  dimension: attribute14_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE14_V ;;
  }

  dimension: attribute15_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE15_V ;;
  }

  dimension_group: attribute1_d {
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
    sql: ${TABLE}.ATTRIBUTE1_D ;;
  }

  dimension: attribute1_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE1_N ;;
  }

  dimension: attribute1_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE1_V ;;
  }

  dimension_group: attribute2_d {
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
    sql: ${TABLE}.ATTRIBUTE2_D ;;
  }

  dimension: attribute2_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE2_N ;;
  }

  dimension: attribute2_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE2_V ;;
  }

  dimension_group: attribute3_d {
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
    sql: ${TABLE}.ATTRIBUTE3_D ;;
  }

  dimension: attribute3_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE3_N ;;
  }

  dimension: attribute3_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE3_V ;;
  }

  dimension_group: attribute4_d {
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
    sql: ${TABLE}.ATTRIBUTE4_D ;;
  }

  dimension: attribute4_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE4_N ;;
  }

  dimension: attribute4_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE4_V ;;
  }

  dimension_group: attribute5_d {
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
    sql: ${TABLE}.ATTRIBUTE5_D ;;
  }

  dimension: attribute5_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE5_N ;;
  }

  dimension: attribute5_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE5_V ;;
  }

  dimension: attribute6_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE6_V ;;
  }

  dimension: attribute7_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE7_V ;;
  }

  dimension: attribute8_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE8_V ;;
  }

  dimension: attribute9_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE9_V ;;
  }

  dimension: attribute_category {
    type: string
    sql: ${TABLE}.ATTRIBUTE_CATEGORY ;;
  }

  dimension: bill_sch_amt {
    type: number
    sql: ${TABLE}.BILL_SCH_AMT ;;
  }

  measure: sum_bill_sch_amt {
    type: sum
    sql: ${bill_sch_amt} ;;
    drill_fields: [detail*]
  }

  dimension: billing_id {
    type: number
    sql: ${TABLE}.BILLING_ID ;;
  }

  dimension: billing_sch_id {
    type: number
    sql: ${TABLE}.BILLING_SCH_ID ;;
  }

  dimension: cash_basis_flag {
    type: string
    sql: ${TABLE}.CASH_BASIS_FLAG ;;
  }

  dimension: cash_receipt_amount {
    type: number
    sql: ${TABLE}.CASH_RECEIPT_AMOUNT ;;
  }

  measure: sum_cash_receipt_amount {
    type: sum
    sql: ${cash_receipt_amount} ;;
  }


  dimension_group: cash_receipt {
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
    sql: ${TABLE}.CASH_RECEIPT_DATE ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }

  dimension: contingency_applied_flag {
    type: string
    sql: ${TABLE}.CONTINGENCY_APPLIED_FLAG ;;
  }

  dimension_group: contingency_applied {
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
    sql: ${TABLE}.CONTINGENCY_APPLIED_ON ;;
  }

  dimension: contingency_applied_type {
    type: string
    sql: ${TABLE}.CONTINGENCY_APPLIED_TYPE ;;
  }

  dimension: contingency_id {
    type: number
    sql: ${TABLE}.CONTINGENCY_ID ;;
  }

  dimension: contingency_release_flag {
    type: string
    sql: ${TABLE}.CONTINGENCY_RELEASE_FLAG ;;
  }

  dimension: contingency_release_type {
    type: string
    sql: ${TABLE}.CONTINGENCY_RELEASE_TYPE ;;
  }

  dimension_group: contingency_released {
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
    sql: ${TABLE}.CONTINGENCY_RELEASED_ON ;;
  }

  dimension: contract_liability_account {
    type: string
    sql: ${TABLE}.CONTRACT_LIABILITY_ACCOUNT ;;
  }

  dimension_group: conversion {
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
    sql: ${TABLE}.CONVERSION_DATE ;;
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

  dimension: delivery_id {
    type: number
    sql: ${TABLE}.DELIVERY_ID ;;
  }

  dimension: do_not_recognize {
    type: string
    sql: ${TABLE}.DO_NOT_RECOGNIZE ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.ERROR_MESSAGE ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.EVENT_ID ;;
  }

  dimension_group: gl {
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
    sql: ${TABLE}.GL_DATE ;;
  }

  dimension_group: gl_posted {
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
    sql: ${TABLE}.GL_POSTED_DATE ;;
  }

  dimension_group: je_txn {
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
    sql: ${TABLE}.JE_TXN_DATE ;;
  }

  dimension: je_txn_line {
    type: string
    sql: ${TABLE}.JE_TXN_LINE ;;
  }

  dimension: je_txn_number {
    type: string
    sql: ${TABLE}.JE_TXN_NUMBER ;;
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

  dimension: ledger_id {
    type: number
    sql: ${TABLE}.LEDGER_ID ;;
  }

  dimension_group: legacy_from {
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
    sql: ${TABLE}.LEGACY_FROM_DATE ;;
  }

  dimension_group: legacy_to {
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
    sql: ${TABLE}.LEGACY_TO_DATE ;;
  }

  dimension: legal_entity_id {
    type: number
    sql: ${TABLE}.LEGAL_ENTITY_ID ;;
  }

  dimension: line_id {
    type: number
    sql: ${TABLE}.LINE_ID ;;
  }

  dimension: line_type {
    type: string
    sql: ${TABLE}.LINE_TYPE ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.ORDER_ID ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: orig_rev_sch_id {
    type: number
    sql: ${TABLE}.ORIG_REV_SCH_ID ;;
  }

  dimension: period_carve_in_out {
    type: number
    sql: ${TABLE}.PERIOD_CARVE_IN_OUT ;;
  }

  dimension: period_month {
    type: number
    sql: ${TABLE}.PERIOD_MONTH ;;
  }

  dimension: period_quarter {
    type: number
    sql: ${TABLE}.PERIOD_QUARTER ;;
  }

  dimension: period_sell_amt {
    type: number
    sql: ${TABLE}.PERIOD_SELL_AMT ;;
  }

  dimension: period_year {
    type: number
    sql: ${TABLE}.PERIOD_YEAR ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.QUANTITY ;;
  }

  measure: sum_quantity {
    type: sum
    sql: ${quantity};;
  }

  dimension: reclass_amount {
    type: number
    sql: ${TABLE}.RECLASS_AMOUNT ;;
  }

  measure: sum_reclass_amount {
    type: sum
    sql: ${reclass_amount} ;;
  }

  dimension: recog_sch_id {
    type: number
    sql: ${TABLE}.RECOG_SCH_ID ;;
  }

  dimension: recognized_period {
    type: string
    sql: ${TABLE}.RECOGNIZED_PERIOD ;;
  }

  dimension: recognized_rev {
    type: number
    sql: ${TABLE}.RECOGNIZED_REV ;;
  }

  dimension: release_contingency_reason {
    type: string
    sql: ${TABLE}.RELEASE_CONTINGENCY_REASON ;;
  }

  dimension: request_id {
    type: number
    sql: ${TABLE}.REQUEST_ID ;;
  }

  dimension: rev_allocation_id {
    type: number
    sql: ${TABLE}.REV_ALLOCATION_ID ;;
  }

  dimension: rev_header_id {
    type: number
    sql: ${TABLE}.REV_HEADER_ID ;;
  }

  dimension: rev_line_id {
    type: number
    sql: ${TABLE}.REV_LINE_ID ;;
  }

  dimension_group: rev_recognized {
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
    sql: ${TABLE}.REV_RECOGNIZED_DATE ;;
  }

  dimension: rev_run_id {
    type: number
    sql: ${TABLE}.REV_RUN_ID ;;
  }

  dimension: rev_sch_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.REV_SCH_ID ;;
  }

  dimension: rev_sch_rule_pct {
    type: number
    sql: ${TABLE}.REV_SCH_RULE_PCT ;;
  }

  dimension: revenue_account {
    type: string
    sql: ${TABLE}.REVENUE_ACCOUNT ;;
  }

  dimension: revenue_amount {
    label: "Scheduled Revenue"
    type: number
    sql: ${TABLE}.REVENUE_AMOUNT ;;
  }

  measure: sum_revenue_amount {
    type: sum
    sql: ${revenue_amount} ;;
    drill_fields: [pobdtl*]
  }

  dimension_group: revenue_from {
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
    sql: ${TABLE}.REVENUE_FROM_DATE ;;
  }

  dimension: revenue_period {
    type: string
    sql: ${TABLE}.REVENUE_PERIOD ;;
  }

  dimension_group: revenue_to {
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
    sql: ${TABLE}.REVENUE_TO_DATE ;;
  }

  dimension: revenue_type {
    type: string
    sql: ${TABLE}.REVENUE_TYPE ;;
  }

  dimension: reversal_sch_id {
    type: number
    sql: ${TABLE}.REVERSAL_SCH_ID ;;
  }

  dimension_group: sch_end {
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
    sql: ${TABLE}.SCH_END_DATE ;;
  }

  dimension_group: sch_start {
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
    sql: ${TABLE}.SCH_START_DATE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.TENANT_ID ;;
  }

  dimension: unrecognized_rev {
    type: number
    sql: ${TABLE}.UNRECOGNIZED_REV ;;
  }

  measure: sum_unrecognized_rev {
    type: sum
    sql: ${unrecognized_rev} ;;
  }

  measure: bill_unsch_amount {
    type: number
    sql:  ${revenue_amount}-${bill_sch_amt} ;;
  }

  measure: sum_unscheduled_revenue{
    type: number
    sql:  ${rev_lines_all.sum_cumulative_net_revenue}-${rev_schedules_all.sum_revenue_amount} ;;
    drill_fields: [pobdtl*]
  }


  measure: unscheduled_revenue{
    type: number
    sql:  ${rev_lines_all.cumulative_net_revenue}-${rev_schedules_all.revenue_amount} ;;
    drill_fields: [pobdtl*]
  }

  measure: sum_recognized_amount{
    type: sum
    filters: [status: "RECOGNIZED"]
   # filters: [status: "DEFERRED"]
    sql: ${revenue_amount} ;;
    drill_fields: [pobdtl*]
  }

  measure: sum_unrecognized_amount{
    type: sum
    filters: [status: "DEFERRED"]
    sql: ${revenue_amount} ;;
    drill_fields: [pobdtl*]
  }

  measure: count {
    type: count
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
      rev_lines_all.pob_rule_name,
      rev_lines_all.revenue_amount,
      rev_schedules_all.bill_sch_amt,
      rev_schedules_all.bill_unsch_amount
    ]
  }

  set: pobdtl {
    fields: [
      order_header_all.order_number,
      order_lines_all.line_number,
      order_header_all.booked_date,
      order_header_all.effective_start_date,
      order_header_all.effective_end_date,
      rev_schedules_all.quantity,
      rev_lines_all.revenue_amount,
      rev_schedules_all.gl_date,
      rev_lines_all.bill_to_customer_name,
      rev_lines_all.rev_contract_number,
      rev_lines_all.item_name,
      rev_lines_all.pob_type,
      rev_lines_all.pob_sch_type,
      rev_lines_all.pob_rel_method,
      rev_lines_all.pob_rule_name,
      rev_lines_all.ledger_name,
      rev_lines_all.transaction_currency,
      rev_lines_all.functional_currency,
      rev_lines_all.cumulative_net_revenue,
      rev_schedules_all.period_carve_in_out,
      rev_schedules_all.revenue_amount,
      rev_schedules_all.sum_unrecognized_revenue,
      rev_def_schedules_all.Unbilled_Revenue,
      rev_def_schedules_all.invoice_amount
    ]
  }

}
