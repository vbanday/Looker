view: credits_waterfall {
  sql_table_name: ADORB.CREDITS_WATERFALL ;;

  dimension_group: completetion {
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
    sql: ${TABLE}.COMPLETETION_DATE ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.DOMAIN ;;
  }

  dimension: func_curr {
    type: string
    sql: ${TABLE}.FUNC_CURR ;;
  }

  dimension: functional_amount {
    type: number
    sql: ${TABLE}.FUNCTIONAL_AMOUNT ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.ORDER_NUMBER ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.PERIOD ;;
  }

  dimension_group: period {
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
    sql: ${TABLE}.PERIOD_DATE ;;
  }

  dimension: period_num {
    type: string
    sql: ${TABLE}.PERIOD_NUM ;;
  }

  dimension: reference_number {
    type: string
    sql: ${TABLE}.REFERENCE_NUMBER ;;
  }

  dimension: reporting_amount {
    type: number
    sql: ${TABLE}.REPORTING_AMOUNT ;;
  }

  dimension: revenue_contract {
    type: string
    sql: ${TABLE}.REVENUE_CONTRACT ;;
  }

  dimension: rpt_curr {
    type: string
    sql: ${TABLE}.RPT_CURR ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: trx_amount {
    type: number
    sql: ${TABLE}.TRX_AMOUNT ;;
  }

  dimension: trx_curr {
    type: string
    sql: ${TABLE}.TRX_CURR ;;
  }

  dimension_group: wallet {
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
    sql: ${TABLE}.WALLET_DATE ;;
  }

  dimension: waterfall_activity {
    type: string
    sql: ${TABLE}.WATERFALL_ACTIVITY ;;
  }

  measure: count {
    type: count
    drill_fields: [dtl*]
  }

  measure: sum_trx_amount {
    type: sum
    sql: ${trx_amount} ;;
    drill_fields: [dtl*]
  }

  measure: sum_functional_amount {
    type: sum
    sql: ${functional_amount} ;;
    drill_fields: [dtl*]
  }

  measure: sum_reporting_amount {
    type: sum
    sql: ${reporting_amount} ;;
    drill_fields: [dtl*]
  }


  set: dtl {
    fields: [
      credits_waterfall.ORDER_NUMBER,
      credits_waterfall.REVENUE_CONTRACT,
      credits_waterfall.WATERFALL_ACTIVITY,
      credits_waterfall.REFERENCE_NUMBER,
      credits_waterfall.WALLET_DATE,
      credits_waterfall.DOMAIN,
      credits_waterfall.START_DATE,
      credits_waterfall.COMPLETETION_DATE,
      credits_waterfall.PERIOD,
      credits_waterfall.TRX_AMOUNT,
      credits_waterfall.FUNCTIONAL_AMOUNT,
      credits_waterfall.REPORTING_AMOUNT,
      credits_waterfall.TRX_CURR,
      credits_waterfall.FUNC_CURR,
       credits_waterfall.RPT_CURR
    ]
  }


}
