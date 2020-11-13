connection: "icann_test"

# include all the views
include: "/views/*.view"

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
