connection: "recvue_preview"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: recvue_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

#persist_with: recvue_analytics_default_datagroup

#explore: contracts {}
#explore: usages {}
#explore: billing {}
#explore: revenue {}
#explore: payments {}
