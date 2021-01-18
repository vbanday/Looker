view: rsk_and_opr {
   derived_table: {
    sql:   SELECT department,
               RANK,
               supplier,
               scheme_code,
               scheme_dates,
               comments_to,
               calc_metric,
               scheme_type,
               fi_earnings,
               TYPE,
               to_req_tier,
               gr_tier,
               grw_earnings_rt,
               to_forecast_earnings,
               total_forecast_earnings
          FROM custom_hook.RSK_AND_OPR
       ;;
  }
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


  measure: sum_to_req_tier {
    type: sum
    sql: ${to_req_tier} ;;
  }

  measure: sum_to_forecast_earnings {
    type: sum
    sql: ${to_forecast_earnings} ;;
  }
  measure: sum_total_forecast_earnings {
    type: sum
    sql: ${total_forecast_earnings} ;;
  }

}
