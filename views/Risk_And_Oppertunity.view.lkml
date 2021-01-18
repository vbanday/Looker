view: rsk_and_opr {
  sql_table_name: CUSTOM_HOOK.RSK_AND_OPR ;;

  dimension: calc_metric {
    type: string
    sql: ${TABLE}.CALC_METRIC ;;
  }

  dimension: comments_to {
    type: string
    sql: ${TABLE}.COMMENTS_TO ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.DEPARTMENT ;;
  }

  dimension: fi_earnings {
    type: string
    sql: ${TABLE}.FI_EARNINGS ;;
  }

  dimension: gr_tier {
    type: string
    sql: ${TABLE}.GR_TIER ;;
  }

  dimension: grw_earnings_rt {
    type: string
    sql: ${TABLE}.GRW_EARNINGS_RT ;;
  }

  dimension: partner {
    type: string
    sql: ${TABLE}.PARTNER ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.RANK ;;
  }

  dimension: scheme_code {
    type: string
    sql: ${TABLE}.SCHEME_CODE ;;
  }

  dimension: scheme_dates {
    type: string
    sql: ${TABLE}.SCHEME_DATES ;;
  }

  dimension: scheme_type {
    type: string
    sql: ${TABLE}.SCHEME_TYPE ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.SUPPLIER ;;
  }

  dimension: to_forecast_earnings {
    type: string
    sql: ${TABLE}.TO_FORECAST_EARNINGS ;;
  }

  dimension: to_req_tier {
    type: string
    sql: ${TABLE}.TO_REQ_TIER ;;
  }

  dimension: total_forecast_earnings {
    type: string
    sql: ${TABLE}.TOTAL_FORECAST_EARNINGS ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
