view: payments {

    # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT pla.payment_line_id,
          sup.supplier_name,
          ssa.address1 Supplier_Site_Address,
          pla.trx_date trx_date,
          pla.Currency,
          pla.trx_type,
          pma.attribute1,
          pma.item_name,
          pla.quantity,
          pla.cost_price,
          pla.total_amount,
          le.legal_entity_name,
          oha.order_id,
          oha.order_number,
          oha.reference_number,
          oha.deal_number,
          oha.order_category,
          oha.order_type,
          pla.payment_status
FROM adorb.payment_lines_all pla,
     adorb.product_master_all pma,
     adorb.order_lines_all ola,
     adorb.order_header_all oha,
     adorb.legal_entity le,
     adorb.order_payment_lines_all opla,
     adorb.suppliers sup,
     adorb.supplier_sites_all ssa
WHERE   oha.legal_entity_id = le.legal_entity_id
  AND pla.order_id=oha.order_id
  AND oha.order_id=ola.order_id
  AND pla.order_id=ola.order_id
  AND pla.line_id=ola.line_id
  AND ola.item_id=pma.item_id
  AND opla.line_id = ola.line_id
  AND sup.supplier_id=pla.supplier_id
  AND ssa.supplier_site_id=pla.supplier_site_id;;
  }

  dimension: payment_line_id
  {type: number
    sql:${TABLE}.payment_line_id;;}

  dimension: supplier_name
  {type: string
    sql:${TABLE}.supplier_name;;}


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
}
# view: partner_payments {
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
