connection: "recvue_preview"

# include all the views
include: "/views/**/*.view"

datagroup: revenue_insights_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: revenue_insights_default_datagroup

#explore: connection_reg_r3 {}

#explore: vrfy_9_d445_e7_a39_fbae3_d980_c60_e4_d {}


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
  join: rev_schedules_all  {
    type: left_outer
    sql_on:  ${rev_lines_all.rev_line_id}=${rev_schedules_all.rev_line_id} ;;
    relationship: one_to_many
  }
  join: rev_def_schedules_all {
    type: left_outer
    sql_on:  ${rev_lines_all.rev_line_id}=${rev_def_schedules_all.rev_line_id} ;;
    relationship: one_to_many
  }
  join: gl_subledger_acct_entries_def {
    from: gl_subledger_acct_entries
    type: left_outer
    sql_on: ${rev_def_schedules_all.def_sch_id}=${gl_subledger_acct_entries_def.identifier_id} AND ${gl_subledger_acct_entries_def.identifier_source} = "REV_DEF_SCHEDULES_ALL";;
    relationship: one_to_many
  }
  join: gl_subledger_acct_entries_sch {
    from: gl_subledger_acct_entries
    type: left_outer
    sql_on: ${rev_schedules_all.rev_sch_id}=${gl_subledger_acct_entries_def.identifier_id} AND ${gl_subledger_acct_entries_def.identifier_source} = "REV_DEF_SCHEDULES_ALL";;
    relationship: one_to_many
  }
}
