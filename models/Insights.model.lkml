connection: "recvue_preview"

# include all the views
include: "/views/*.view.lkml"

datagroup: recvue_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: recvue_analytics_default_datagroup


explore: contracts {}
explore: usages {}
explore: billing {}
explore: revenue {}
explore: payments {}
explore: geturl {}
explore: forecast {}
explore: rskopr {}
explore: compensation {}

explore: rev_lines_all{
  join: order_header_all {
    type: inner
    sql_on: ${order_lines_all.order_id}=${order_header_all.order_id};;
    relationship: many_to_one
  }
  join: order_lines_all {
    type: inner
    sql_on: ${rev_lines_all.orig_line_id}=${order_lines_all.line_id};;
    relationship: one_to_one
  }
  join: rev_schedules_all {
    type: inner
    sql_on:  ${rev_lines_all.rev_line_id}=${rev_schedules_all.rev_line_id} ;;
    relationship: one_to_many
  }
}
