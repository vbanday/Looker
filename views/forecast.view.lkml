view: forecast {
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

  derived_table: {
    sql:   select partner
          ,department
          ,rank
          ,supplier
          ,scheme_code
          ,scheme_start_date
          ,scheme_end_date
          ,scheme_dates
          ,comments_to
          ,calc_metric
          ,scheme_type
          ,fi_earnings
          ,notes
          ,gur_earning_rate
          ,forecast_to
          ,base_to_gre
          ,forecast_to_per
          ,curr_grw_tier_ind
          ,forecast_grw_tier
          ,forecast_grw_earning_rt
          ,forecast_earning
          ,ly_earning
          ,ty_ly_earning_diff_per
          ,rsk_to_req_low_tier
          ,opr_low_gr_tier
          ,opr_low_grw_earnings_rt
          ,rsk_to_forecast_earnings
          ,rsk_total_forecast_earnings
          ,opr_to_req_hgh_tier
          ,opr_hgh_gr_tier
          ,opr_hgh_grw_earnings_rt
          ,opr_to_forecast_earnings
          ,opr_total_forecast_earnings
          ,rdc_commit
          ,ty_total_to_ytd
          ,ly_total_to_ytd
          ,ty_ly_diff_per
          ,ty_ytd_dates
          ,ly_total_to
          ,prvy_total_to
          ,ty_prvy_diff_per
          ,tyto_period_1
          ,lyto_period_1
          ,perf_per_period_1
          ,tyto_period_2
          ,lyto_period_2
          ,perf_per_period_2
          ,tyto_period_3
          ,lyto_period_3
          ,perf_per_period_3
          ,tyto_period_4
          ,lyto_period_4
          ,perf_per_period_4
          ,tyto_period_5
          ,lyto_period_5
          ,perf_per_period_5
          ,tyto_period_6
          ,lyto_period_6
          ,perf_per_period_6
          ,tyto_period_7
          ,lyto_period_7
          ,perf_per_period_7
          ,tyto_period_8
          ,lyto_period_8
          ,perf_per_period_8
          ,tyto_period_9
          ,lyto_period_9
          ,perf_per_period_9
          ,tyto_period_10
          ,lyto_period_10
          ,perf_per_period_10
          ,tyto_period_11
          ,lyto_period_11
          ,perf_per_period_11
          ,tyto_period_12
          ,lyto_period_12
          ,perf_per_period_12
           from custom_hook.performance_details
       ;;
  }
}

# view: forecast {
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
