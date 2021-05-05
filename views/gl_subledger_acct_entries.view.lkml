view: gl_subledger_acct_entries {
  sql_table_name: ADORB.GL_SUBLEDGER_ACCT_ENTRIES ;;

  dimension: account_combination {
    type: string
    sql: ${TABLE}.ACCOUNT_COMBINATION ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}.ACCOUNT_TYPE ;;
  }

  dimension: accounted_credit {
    type: number
    sql: ${TABLE}.ACCOUNTED_CREDIT ;;
  }

  dimension: accounted_currency {
    type: string
    sql: ${TABLE}.ACCOUNTED_CURRENCY ;;
  }

  dimension: accounted_debit {
    type: number
    sql: ${TABLE}.ACCOUNTED_DEBIT ;;
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

  dimension: accounting_detail_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ACCOUNTING_DETAIL_ID ;;
  }

  dimension: acct_event_type {
    type: string
    sql: ${TABLE}.ACCT_EVENT_TYPE ;;
  }

  dimension: attribute10_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE10_V ;;
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

  dimension: coa_rule {
    type: number
    sql: ${TABLE}.COA_RULE ;;
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

  dimension: conversion_rate {
    type: number
    sql: ${TABLE}.CONVERSION_RATE ;;
  }

  dimension: conversion_type {
    type: string
    sql: ${TABLE}.CONVERSION_TYPE ;;
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

  dimension: detail_type {
    type: string
    sql: ${TABLE}.DETAIL_TYPE ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.ERROR_MESSAGE ;;
  }

  dimension_group: gl {
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
    sql: ${TABLE}.GL_DATE ;;
  }

  dimension: gl_period {
    type: string
    sql: ${TABLE}.GL_PERIOD ;;
  }

  dimension_group: gl_period_end {
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
    sql: ${TABLE}.GL_PERIOD_END_DATE ;;
  }

  dimension_group: gl_transfer {
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
    sql: ${TABLE}.GL_TRANSFER_DATE ;;
  }

  dimension: gl_transfer_flag {
    type: string
    sql: ${TABLE}.GL_TRANSFER_FLAG ;;
  }

  dimension: global_conversion_rate {
    type: number
    sql: ${TABLE}.GLOBAL_CONVERSION_RATE ;;
  }

  dimension: global_credit {
    type: number
    sql: ${TABLE}.GLOBAL_CREDIT ;;
  }

  dimension: global_currency {
    type: string
    sql: ${TABLE}.GLOBAL_CURRENCY ;;
  }

  dimension: global_debit {
    type: number
    sql: ${TABLE}.GLOBAL_DEBIT ;;
  }

  dimension: identifier_id {
    type: number
    sql: ${TABLE}.IDENTIFIER_ID ;;
  }

  dimension: identifier_source {
    type: string
    sql: ${TABLE}.IDENTIFIER_SOURCE ;;
  }

  dimension_group: je {
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
    sql: ${TABLE}.JE_DATE ;;
  }

  dimension: je_flag {
    type: string
    sql: ${TABLE}.JE_FLAG ;;
  }

  dimension: je_trx_number {
    type: string
    sql: ${TABLE}.JE_TRX_NUMBER ;;
  }

  dimension: je_txn_date {
    type: number
    sql: ${TABLE}.JE_TXN_DATE ;;
  }

  dimension: je_txn_line {
    type: number
    sql: ${TABLE}.JE_TXN_LINE ;;
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

  dimension: legal_entity_id {
    type: number
    sql: ${TABLE}.LEGAL_ENTITY_ID ;;
  }

  dimension: line_id {
    type: number
    sql: ${TABLE}.LINE_ID ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.ORDER_ID ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension_group: period_end {
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
    sql: ${TABLE}.PERIOD_END_DATE ;;
  }

  dimension: period_name {
    type: string
    sql: ${TABLE}.PERIOD_NAME ;;
  }

  dimension: posting_batch_id {
    type: number
    sql: ${TABLE}.POSTING_BATCH_ID ;;
  }

  dimension: posting_batch_name {
    type: string
    sql: ${TABLE}.POSTING_BATCH_NAME ;;
  }

  dimension: request_id {
    type: number
    sql: ${TABLE}.REQUEST_ID ;;
  }

  dimension: rev_run_id {
    type: number
    sql: ${TABLE}.REV_RUN_ID ;;
  }

  dimension: segment1 {
    type: string
    sql: ${TABLE}.SEGMENT1 ;;
  }

  dimension: segment10 {
    type: string
    sql: ${TABLE}.SEGMENT10 ;;
  }

  dimension: segment11 {
    type: string
    sql: ${TABLE}.SEGMENT11 ;;
  }

  dimension: segment12 {
    type: string
    sql: ${TABLE}.SEGMENT12 ;;
  }

  dimension: segment13 {
    type: string
    sql: ${TABLE}.SEGMENT13 ;;
  }

  dimension: segment14 {
    type: string
    sql: ${TABLE}.SEGMENT14 ;;
  }

  dimension: segment15 {
    type: string
    sql: ${TABLE}.SEGMENT15 ;;
  }

  dimension: segment16 {
    type: string
    sql: ${TABLE}.SEGMENT16 ;;
  }

  dimension: segment17 {
    type: string
    sql: ${TABLE}.SEGMENT17 ;;
  }

  dimension: segment18 {
    type: string
    sql: ${TABLE}.SEGMENT18 ;;
  }

  dimension: segment19 {
    type: string
    sql: ${TABLE}.SEGMENT19 ;;
  }

  dimension: segment2 {
    type: string
    sql: ${TABLE}.SEGMENT2 ;;
  }

  dimension: segment20 {
    type: string
    sql: ${TABLE}.SEGMENT20 ;;
  }

  dimension: segment21 {
    type: string
    sql: ${TABLE}.SEGMENT21 ;;
  }

  dimension: segment22 {
    type: string
    sql: ${TABLE}.SEGMENT22 ;;
  }

  dimension: segment23 {
    type: string
    sql: ${TABLE}.SEGMENT23 ;;
  }

  dimension: segment24 {
    type: string
    sql: ${TABLE}.SEGMENT24 ;;
  }

  dimension: segment25 {
    type: string
    sql: ${TABLE}.SEGMENT25 ;;
  }

  dimension: segment26 {
    type: string
    sql: ${TABLE}.SEGMENT26 ;;
  }

  dimension: segment27 {
    type: string
    sql: ${TABLE}.SEGMENT27 ;;
  }

  dimension: segment28 {
    type: string
    sql: ${TABLE}.SEGMENT28 ;;
  }

  dimension: segment29 {
    type: string
    sql: ${TABLE}.SEGMENT29 ;;
  }

  dimension: segment3 {
    type: string
    sql: ${TABLE}.SEGMENT3 ;;
  }

  dimension: segment30 {
    type: string
    sql: ${TABLE}.SEGMENT30 ;;
  }

  dimension: segment4 {
    type: string
    sql: ${TABLE}.SEGMENT4 ;;
  }

  dimension: segment5 {
    type: string
    sql: ${TABLE}.SEGMENT5 ;;
  }

  dimension: segment6 {
    type: string
    sql: ${TABLE}.SEGMENT6 ;;
  }

  dimension: segment7 {
    type: string
    sql: ${TABLE}.SEGMENT7 ;;
  }

  dimension: segment8 {
    type: string
    sql: ${TABLE}.SEGMENT8 ;;
  }

  dimension: segment9 {
    type: string
    sql: ${TABLE}.SEGMENT9 ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: sub_acct_event {
    type: string
    sql: ${TABLE}.SUB_ACCT_EVENT ;;
  }

  dimension: subledger_code {
    type: string
    sql: ${TABLE}.SUBLEDGER_CODE ;;
  }

  dimension: subledger_id {
    type: number
    sql: ${TABLE}.SUBLEDGER_ID ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.TENANT_ID ;;
  }

  dimension: transaction_credit {
    type: number
    sql: ${TABLE}.TRANSACTION_CREDIT ;;
  }

  dimension: transaction_currency {
    type: string
    sql: ${TABLE}.TRANSACTION_CURRENCY ;;
  }

  dimension: transaction_debit {
    type: number
    sql: ${TABLE}.TRANSACTION_DEBIT ;;
  }

  measure: count {
    type: count
    drill_fields: [posting_batch_name, period_name]
  }
}
