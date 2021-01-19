
view: rskopr {
#   # Or, you could make this view a derived table, like this:
   derived_table: {
     sql:   SELECT partner,
               department,
               RANK,
               supplier,
               scheme_code,
               scheme_dates,
               comments_to,
               calc_metric,
               scheme_type,
               fi_earnings,
               TYPE,
               case when to_number(to_req_tier)=-1 then 0
               else to_number(to_req_tier)
               end to_req_tier,
               case when to_number(gr_tier)=-1 then 0
                    when to_number(gr_tier)=-2 then 0
                    else to_number(gr_tier)
               end gr_tier,
               case when to_number(grw_earnings_rt)=-1 then 0
                   else to_number(grw_earnings_rt)
               end  grw_earnings_rt,
               case when to_number(to_forecast_earnings)=-1 then 0
                   else to_number(to_forecast_earnings)
               end to_forecast_earnings,
               case when to_number(total_forecast_earnings)=-1 then 0
                  else to_number(total_forecast_earnings)
               end total_forecast_earnings,
               to_req_tier to_req_tier_c,
               gr_tier gr_tier_c,
               grw_earnings_rt grw_earnings_rt_c,
               to_forecast_earnings to_forecast_earnings_c,
               total_forecast_earnings total_forecast_earnings_c
          FROM custom_hook.RSK_AND_OPR
       ;;
   }

  dimension: to_req_tier_c {
    type: string
    sql: ${TABLE}.to_req_tier_c ;;
  }

  dimension: gr_tier_c {
    type: string
    sql: ${TABLE}.gr_tier_c ;;
  }

  dimension: grw_earnings_rt_c {
    type: string
    sql: ${TABLE}.grw_earnings_rt_c ;;
  }

  dimension: to_forecast_earnings_c {
    type: string
    sql: ${TABLE}.to_forecast_earnings_c ;;
  }

  dimension: total_forecast_earnings_c {
    type: string
    sql: ${TABLE}.total_forecast_earnings_c ;;
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
    sql: ${TABLE}.gr_tier ;;
  }

  dimension: grw_earnings_rt {
    type: string
    sql: ${TABLE}.grw_earnings_rt ;;
  }

  #measure: sgr_tier {
  #  type: sum
  #  sql: ${gr_tier} ;;
  #}

  #measure: sgrw_earnings_rt {
  #  type: sum
  #  sql: ${grw_earnings_rt} ;;
  #}

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
    type: number
    sql: ${TABLE}.TO_FORECAST_EARNINGS ;;
  }

  dimension: to_req_tier {
    type: number
    sql: ${TABLE}.TO_REQ_TIER ;;
  }

  dimension: total_forecast_earnings {
    type: number
    sql: ${TABLE}.TOTAL_FORECAST_EARNINGS ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE;;
    html:
    {% if value == 'Risk' %}
    <p style="background-color: #de657a; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% else %}
    <p style="background-color: #1dde77; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %}
    ;;
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

  measure: sgr_tier {
    label: "Growth Tier"
    type: string
    sql: max(${gr_tier}) ;;
  }

  measure: sgrw_earnings_rt {
    label: "Growth Earnings Rate"
    type: string
    sql: max(${grw_earnings_rt}) ;;
  }


  }
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
