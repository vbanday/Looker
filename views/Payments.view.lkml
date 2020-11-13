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

  dimension: Supplier_Site_Address
  {type: string
    sql:${TABLE}.Supplier_Site_Address;;}

  dimension_group: trx_date {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.trx_date ;;
  }

  dimension: Currency
  {type: string
    sql:${TABLE}.Currency;;}

  dimension: trx_type
  {type: string
    sql:${TABLE}.trx_type;;}

  dimension: attribute1
  {type: string
    sql:${TABLE}.attribute1;;}

  dimension: item_name
  {type: string
    sql:${TABLE}.item_name;;}

  dimension: quantity
  {type: number
    sql:${TABLE}.quantity;;}

  dimension: cost_price
  {type: number
    sql:${TABLE}.cost_price;;}

  dimension: total_amount
  {type: number
    sql:${TABLE}.total_amount;;}


  dimension: legal_entity_name
  {type: string
    sql:${TABLE}.legal_entity_name;;}

  dimension: order_id
  {type: number
    sql:${TABLE}.order_id;;}
  dimension: order_number
  {type: string
    sql:${TABLE}.order_number;;
    html:
    <a href="https://wwt-test.recvue.com/pages/orderDashboard.xhtml?tab=0&orderId={{order_id}}" target="_blank">{{order_number}}</a>;;
  }

  dimension: reference_number
  {type: string
    sql:${TABLE}.reference_number;;}

  dimension: deal_number
  {type: string
    sql:${TABLE}.deal_number;;}

  dimension: order_category
  {type: string
    sql:${TABLE}.order_category;;}

  dimension: order_type
  {type: string
    sql:${TABLE}.order_type;;}

  dimension: payment_status
  {type: string
    sql:${TABLE}.payment_status;;}

  measure: order_count {
    type: count_distinct
    sql: ${order_id} ;;
  }

  measure: sum_total_quantity {
    type: sum
    sql: ${quantity} ;;
  }

  measure: sum_cost_price {
    type: sum
    sql: ${cost_price} ;;
  }

  measure: sum_total_amount {
    type: sum
    sql: ${total_amount} ;;
  }


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
