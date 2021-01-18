view: forecast {
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
          ,curr_grw_tier_ind
          ,forecast_grw_tier
          ,forecast_grw_earning_rt
          ,forecast_earning
          ,ly_earning
          ,(to_number(forecast_grw_earning_Rt)*to_number(forecast_to)) ty_earning
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
          ,case when lyto_period_1 > 0 then
                   (tyto_period_1-lyto_period_1)/lyto_period_1
           else 0 end * 100  perf_per_period_1
          ,tyto_period_2
          ,lyto_period_2
          ,case when lyto_period_2 > 0 then
                   (tyto_period_2 -lyto_period_2)/lyto_period_2
           else 0 end * 100  perf_per_period_2
          ,tyto_period_3
          ,lyto_period_3
          ,case when lyto_period_3 > 0 then
                   (tyto_period_3 - lyto_period_3)/lyto_period_3
           else 0 end * 100  perf_per_period_3
          ,tyto_period_4
          ,lyto_period_4
          ,case when lyto_period_4 > 0 then
                   (tyto_period_4 - lyto_period_4)/lyto_period_4
           else 0 end * 100  perf_per_period_4
          ,tyto_period_5
          ,lyto_period_5
          ,case when lyto_period_5 > 0 then
                   (tyto_period_5 - lyto_period_5)/lyto_period_5
           else 0 end * 100  perf_per_period_5
          ,tyto_period_6
          ,lyto_period_6
          ,(case when lyto_period_6 > 0 then
                   (tyto_period_6 - lyto_period_6)/lyto_period_6
           else 0 end * 100) perf_per_period_5
          ,tyto_period_7
          ,lyto_period_7
          ,(case when lyto_period_7 > 0 then
                   (tyto_period_7 - lyto_period_7)/lyto_period_7
           else 0 end * 100) perf_per_period_7
          ,tyto_period_8
          ,lyto_period_8
          ,(case when lyto_period_8 > 0 then
                   (tyto_period_8 - lyto_period_8)/lyto_period_8
           else 0 end * 100)perf_per_period_8
          ,tyto_period_9
          ,lyto_period_9
          ,(case when lyto_period_9 > 0 then
                   (tyto_period_9 - lyto_period_9)/lyto_period_9
           else 0 end * 100)perf_per_period_9
          ,tyto_period_10
          ,lyto_period_10
          ,(case when lyto_period_10 > 0 then
                   (tyto_period_10 - lyto_period_10)/lyto_period_10
           else 0 end * 100)perf_per_period_10
          ,tyto_period_11
          ,lyto_period_11
          ,(case when lyto_period_11 > 0 then
                   (tyto_period_11 - lyto_period_11)/lyto_period_11
           else 0 end * 100)perf_per_period_11
          ,tyto_period_12
          ,lyto_period_12
          ,(case when lyto_period_12 > 0 then
                   (tyto_period_12 - lyto_period_12)/lyto_period_12
           else 0 end * 100)perf_per_period_12
           from custom_hook.performance_details p
       ;;
  }

  dimension: partner
  { label: "RDC"
    type: string
    sql:${TABLE}.partner;;}

  dimension: department
  {type: string
    sql:${TABLE}.department;;
  }
  dimension: rank
  {type: string
    sql:${TABLE}.rank;;}

  dimension: supplier
  { label: "RDC"
    type: string
    sql:${TABLE}.supplier;;
  }
  dimension: scheme_code
  {label:"Scheme Code"
    type: string
    sql:${TABLE}.scheme_code;;}

  dimension: scheme_start_date
  {type: string
    sql:${TABLE}.scheme_start_date;;
  }
  dimension: scheme_end_date
  {type: string
    sql:${TABLE}. scheme_end_date;;}

  dimension_group: scheme_start_date_grp
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
    sql:${TABLE}.scheme_start_date;;}

  dimension_group: scheme_end_date_grp
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
    sql:${TABLE}.scheme_end_date;;}

  dimension: scheme_dates
  {type: string
    sql:${TABLE}.scheme_dates;;
  }


  dimension: comments_to
  {type: string
    sql:${TABLE}.comments_to;;}

  dimension: calc_metric
  {type: string
    sql:${TABLE}.calc_metric;;
  }
  dimension: scheme_type
  {type: string
    sql:${TABLE}.scheme_type;;}

  dimension: fi_earnings
  {type: string
    sql:${TABLE}.fi_earnings;;
  }
  dimension: notes
  {type: string
    sql:${TABLE}.notes;;}

  dimension: gur_earning_rate
  {type: string
    sql:${TABLE}.gur_earning_rate;;
  }

  dimension: forecast_to
  {type: number
    sql:${TABLE}.forecast_to;;
    }

  dimension: base_to_gre
  {type: number
    sql:${TABLE}.base_to_gre;;
  }

  dimension: forecast_to_per
  {type: number
    sql:${TABLE}.forecast_to_per;;
  }

  dimension: curr_grw_tier_ind
  {type: string
    sql:${TABLE}.curr_grw_tier_ind;;
  }


  dimension: forecast_grw_tier
  {type: string
    sql:${TABLE}.forecast_grw_tier;;
  }

  dimension: forecast_grw_earning_rt
  {type: number
    sql:${TABLE}.forecast_grw_earning_rt;;
  }

  dimension: forecast_earning
  {type: string
    sql:${TABLE}.forecast_earning;;
  }

  dimension: ly_earning
  {type: number
    sql:${TABLE}.ly_earning;;
  }
  dimension: ty_earning
  {type: number
    sql:${TABLE}.ty_earning;;
  }

  dimension: ty_ly_earning_diff_per
  {type: string
    sql:${TABLE}.ty_ly_earning_diff_per;;
  }

  dimension: rsk_to_req_low_tier
  {type: string
    sql:${TABLE}.rsk_to_req_low_tier;;
  }

  dimension: opr_low_gr_tier
  {type: string
    sql:${TABLE}.opr_low_gr_tier;;
  }

  dimension: opr_low_grw_earnings_rt
  {type: string
    sql:${TABLE}.opr_low_grw_earnings_rt;;
  }

  dimension: rsk_to_forecast_earnings
  {type: string
    sql:${TABLE}.rsk_to_forecast_earnings;;
  }

  dimension: rsk_total_forecast_earnings
  {type: string
    sql:${TABLE}.rsk_total_forecast_earnings;;
  }

  dimension: opr_to_req_hgh_tier
  {type: string
    sql:${TABLE}.opr_to_req_hgh_tier;;
  }

  dimension: opr_hgh_gr_tier
  {type: string
    sql:${TABLE}.opr_hgh_gr_tier;;
  }

  dimension: opr_hgh_grw_earnings_rt
  {type: string
    sql:${TABLE}. opr_hgh_grw_earnings_rt;;
  }

  dimension: opr_to_forecast_earnings
  {type: string
    sql:${TABLE}.opr_to_forecast_earnings;;
  }

  dimension: opr_total_forecast_earnings
  {type: string
    sql:${TABLE}.opr_total_forecast_earnings;;
  }

  dimension: rdc_commit
  {type: string
    sql:${TABLE}.rdc_commit;;
  }

  dimension: ty_total_to_ytd
  {type: string
    sql:${TABLE}.ty_total_to_ytd;;
  }

  dimension: ly_total_to_ytd
  {type: string
    sql:${TABLE}.ly_total_to_ytd;;
  }

  dimension: ty_ly_diff_per
  {type: string
    sql:${TABLE}.ty_ly_diff_per;;
  }

  dimension: ty_ytd_dates
  {type: string
    sql:${TABLE}.ty_ytd_dates;;
  }

  dimension: ly_total_to
  {type: string
    sql:${TABLE}.ly_total_to;;
  }

  dimension: prvy_total_to
  {type: string
    sql:${TABLE}.prvy_total_to;;
  }

  dimension: ty_prvy_diff_per
  {type: string
    sql:${TABLE}.ty_prvy_diff_per;;
  }

  dimension: tyto_period_1
  {type: string
    sql:${TABLE}.tyto_period_1;;
  }

  dimension: lyto_period_1
  {type: string
    sql:${TABLE}.lyto_period_1;;
  }

  dimension: perf_per_period_1
  {type: string
    sql:${TABLE}.perf_per_period_1;;
  }

  dimension: tyto_period_2
  {type: string
    sql:${TABLE}.tyto_period_2;;
  }

  dimension: lyto_period_2
  {type: string
    sql:${TABLE}.lyto_period_2;;
  }

  dimension: perf_per_period_2
  {type: string
    sql:${TABLE}.perf_per_period_2;;
  }

  dimension: tyto_period_3
  {type: string
    sql:${TABLE}.tyto_period_3;;
  }

  dimension: lyto_period_3
  {type: string
    sql:${TABLE}.lyto_period_3;;
  }

  dimension: perf_per_period_3
  {type: string
    sql:${TABLE}.perf_per_period_3;;
  }


  dimension: tyto_period_4
  {type: string
    sql:${TABLE}.tyto_period_4;;
  }

  dimension: lyto_period_4
  {type: string
    sql:${TABLE}.lyto_period_4;;
  }

  dimension: perf_per_period_4
  {type: string
    sql:${TABLE}.perf_per_period_4;;
  }


  dimension: tyto_period_5
  {type: string
    sql:${TABLE}.tyto_period_5;;
  }

  dimension: lyto_period_5
  {type: string
    sql:${TABLE}.lyto_period_5;;
  }

  dimension: perf_per_period_5
  {type: string
    sql:${TABLE}.perf_per_period_5;;
  }


  dimension: tyto_period_6
  {type: string
    sql:${TABLE}.tyto_period_6;;
  }

  dimension: lyto_period_6
  {type: string
    sql:${TABLE}.lyto_period_6;;
  }

  dimension: perf_per_period_6
  {type: string
    sql:${TABLE}.perf_per_period_6;;
  }


  dimension: tyto_period_7
  {type: string
    sql:${TABLE}.tyto_period_7;;
  }

  dimension: lyto_period_7
  {type: string
    sql:${TABLE}.lyto_period_7;;
  }

  dimension: perf_per_period_7
  {type: string
    sql:${TABLE}.perf_per_period_7;;
  }


  dimension: tyto_period_8
  {type: string
    sql:${TABLE}.tyto_period_8;;
  }

  dimension: lyto_period_8
  {type: string
    sql:${TABLE}.lyto_period_8;;
  }

  dimension: perf_per_period_8
  {type: string
    sql:${TABLE}.perf_per_period_8;;
  }


  dimension: tyto_period_9
  {type: string
    sql:${TABLE}.tyto_period_9;;
  }

  dimension: lyto_period_9
  {type: string
    sql:${TABLE}.lyto_period_9;;
  }

  dimension: perf_per_period_9
  {type: string
    sql:${TABLE}.perf_per_period_9;;
  }


  dimension: tyto_period_10
  {type: string
    sql:${TABLE}.tyto_period_10;;
  }

  dimension: lyto_period_10
  {type: string
    sql:${TABLE}.lyto_period_10;;
  }

  dimension: perf_per_period_10
  {type: string
    sql:${TABLE}.perf_per_period_10;;
  }


  dimension: tyto_period_11
  {type: string
    sql:${TABLE}.tyto_period_11;;
  }

  dimension: lyto_period_11
  {type: string
    sql:${TABLE}.lyto_period_11;;
  }

  dimension: perf_per_period_11
  {type: string
    sql:${TABLE}.perf_per_period_11;;
  }


  dimension: tyto_period_12
  {type: string
    sql:${TABLE}.tyto_period_12;;
  }

  dimension: lyto_period_12
  {type: string
    sql:${TABLE}.lyto_period_12;;
  }

  dimension: perf_per_period_12
  {type: string
    sql:${TABLE}.perf_per_period_12;;
  }

  dimension: total_ty_to_ytd_all
  {type: string
    sql:${TABLE}.total_ty_to_ytd_all;;
  }

  dimension: total_ly_to_ytd_all
  {type: string
    sql:${TABLE}.total_ly_to_ytd_all;;
  }

  measure: sum_total_ty_to_ytd_all {
    type: sum
    sql: ${total_ty_to_ytd_all} ;;
  }

  measure: sum_total_ly_to_ytd_all {
    type: sum
    sql: ${total_ly_to_ytd_all} ;;
  }


  measure: sum_ly_earning {
    type: sum
    sql: ${ly_earning} ;;
  }

  measure: sum_ty_earning {
    type: sum
    sql: ${ty_earning} ;;
  }

  measure: sum_forecast_to{
    type: sum
    sql: ${forecast_to} ;;
  }

  measure: sum_base_to_gre{
    type: sum
    sql: ${base_to_gre} ;;
  }

  measure: sum_forecast_earning {
    type: sum
    sql: ${forecast_earning} ;;
  }

  measure: sum_rsk_to_req_low_tier {
    type: sum
    sql: ${rsk_to_req_low_tier} ;;
  }

  measure: sum_opr_low_gr_tier {
    type: sum
    sql: ${opr_low_gr_tier} ;;
  }

  measure: sum_opr_low_grw_earnings_rt {
    type: sum
    sql: ${opr_low_grw_earnings_rt} ;;
  }

  measure: sum_rsk_to_forecast_earnings {
    type: sum
    sql: ${rsk_to_forecast_earnings} ;;
  }

  measure: sum_rsk_total_forecast_earnings {
    type: sum
    sql: ${rsk_total_forecast_earnings} ;;
  }

  measure: sum_opr_to_req_hgh_tier {
    type: sum
    sql: ${opr_to_req_hgh_tier} ;;
  }

  measure: sum_opr_hgh_gr_tier {
    type: sum
    sql: ${opr_hgh_gr_tier} ;;
  }

  measure: sum_opr_hgh_grw_earnings_rt {
    type: sum
    sql: ${opr_hgh_grw_earnings_rt} ;;
  }

  measure: sum_opr_to_forecast_earnings {
    type: sum
    sql: ${opr_to_forecast_earnings} ;;
  }

  measure: sum_opr_total_forecast_earnings {
    type: sum
    sql: ${opr_total_forecast_earnings} ;;
  }

  measure: sum_ty_total_to_ytd {
    type: sum
    sql: ${ty_total_to_ytd} ;;
  }

  measure: sum_ly_total_to_ytd {
    type: sum
    sql: ${ly_total_to_ytd} ;;
  }

  measure: sum_ly_total_to {
    type: sum
    sql: ${ly_total_to} ;;
  }

  measure: sum_prvy_total_to {
    type: sum
    sql: ${prvy_total_to} ;;
  }

  measure: sum_tyto_period_1 {
    type: sum
    sql: ${tyto_period_1} ;;
  }

  measure: sum_lyto_period_1 {
    type: sum
    sql: ${lyto_period_1} ;;
  }

  measure: sum_tyto_period_2 {
    type: sum
    sql: ${tyto_period_2} ;;
  }

  measure: sum_lyto_period_2 {
    type: sum
    sql: ${lyto_period_2} ;;
  }

  measure: sum_tyto_period_3 {
    type: sum
    sql: ${tyto_period_3} ;;
  }

  measure: sum_lyto_period_3 {
    type: sum
    sql: ${lyto_period_3} ;;
  }

  measure: sum_tyto_period_4 {
    type: sum
    sql: ${tyto_period_4} ;;
  }

  measure: sum_lyto_period_4 {
    type: sum
    sql: ${lyto_period_4} ;;
  }

  measure: sum_tyto_period_5 {
    type: sum
    sql: ${tyto_period_5} ;;
  }

  measure: sum_lyto_period_5 {
    type: sum
    sql: ${lyto_period_5} ;;
  }

  measure: sum_tyto_period_6 {
    type: sum
    sql: ${tyto_period_6} ;;
  }

  measure: sum_lyto_period_6 {
    type: sum
    sql: ${lyto_period_6} ;;
  }

  measure: sum_tyto_period_7 {
    type: sum
    sql: ${tyto_period_7} ;;
  }

  measure: sum_lyto_period_7 {
    type: sum
    sql: ${lyto_period_7} ;;
  }

  measure: sum_tyto_period_8 {
    type: sum
    sql: ${tyto_period_8} ;;
  }

  measure: sum_lyto_period_8 {
    type: sum
    sql: ${lyto_period_8} ;;
  }

  measure: sum_tyto_period_9 {
    type: sum
    sql: ${tyto_period_9} ;;
  }

  measure: sum_lyto_period_9 {
    type: sum
    sql: ${lyto_period_9} ;;
  }

  measure: sum_tyto_period_10 {
    type: sum
    sql: ${tyto_period_10} ;;
  }

  measure: sum_lyto_period_10 {
    type: sum
    sql: ${lyto_period_10} ;;
  }

  measure: sum_tyto_period_11 {
    type: sum
    sql: ${tyto_period_11} ;;
  }

  measure: sum_lyto_period_11 {
    type: sum
    sql: ${lyto_period_11} ;;
  }

  measure: sum_tyto_period_12 {
    type: sum
    sql: ${tyto_period_12} ;;
  }

  measure: sum_lyto_period_12 {
    type: sum
    sql: ${lyto_period_12} ;;
  }

  #### comments

  measure: Max_Comments_TO {
    label: "Comments for T/O:"
    type: string
    sql: MAX(${comments_to}) ;;
  }

  measure: Max_Calc_Metric {
    label: "Calculation Metric:"
      type: string
      sql: MAX(${calc_metric}) ;;
    }

  measure: Max_Scheme_Type {
    label: "Scheme Type:"
    type: string
    sql: MAX(${scheme_type}) ;;
  }

  measure: Max_Fi_Earnings {
    label: "Fixed Income:"
    type: string
    sql: MAX(${fi_earnings}) ;;
  }

  measure: Max_gur_earning_rate {
    label: "Guarantee Earnings Rate:"
    type: string
    sql: MAX(${gur_earning_rate}) ;;
  }

  measure: Max_Notes {
    label: "Notes:"
    type: string
    sql: MAX(${notes}) ;;
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
