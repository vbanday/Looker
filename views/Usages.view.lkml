view: usages {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT opp.partner_payment_id,
        pla.payment_line_id,
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
        category.meaning order_category,
        otl.meaning  order_type,
        pla.payment_status,
        llt.meaning line_type,
        olst.meaning line_status,
        ohst.meaning order_status,
        ola.line_number,
        oda.SOURCE Delivery_Source,
        oda.DELIVERY_DATE_FROM  Delivery_Date_From,
        oda.DELIVERY_DATE_TO  Delivery_Date_To,
        oda.DELIVERY_REFERENCE Delivery_Reference,
        pla.TRX_NUMBER,
        NVL(oda.cost,pla.cost_price) cost,
        NVL(oda.delivered_quantity, pla.quantity) delivered_quantity,
        NVL(oda.payable_amt,pla.total_amount) payable_amt,
        oda.payment_status delivery_payment_status,
        ola.BILLING_CHANNEL_ID,
        ola.BILLING_CHANNEL,
        lbcus.account_number,
        lbcus.account_name,
        oda.price
FROM adorb.payment_lines_all pla,
     adorb.product_master_all pma,
     adorb.order_lines_all ola,
     adorb.order_header_all oha,
     adorb.legal_entity le,
    -- adorb.order_payment_lines_all opla,
     adorb.suppliers sup,
     adorb.supplier_sites_all ssa,
     adorb.cust_accounts lbcus,
     adorb.core_lookup_values category,
     adorb.core_lookup_values llt,
     adorb.order_types_all otl,
     adorb.core_lookup_values olst,
     adorb.core_lookup_values ohst
    ,adorb.order_deliveries_all oda
    ,adorb.order_partner_payments opp
WHERE   oha.legal_entity_id = le.legal_entity_id (+)
  AND category.lookup_type = 'ORDER_CATEGORY'
  AND category.lookup_code = oha.order_category
  AND llt.lookup_type = 'LINE_TYPE'
  AND ola.line_type = llt.lookup_code
  AND oha.order_type = otl.order_type
  AND olst.lookup_type = 'ORDER_LINE_STATUS'
  AND ola.status = olst.lookup_code
  AND ohst.lookup_type = 'ORDER_STATUS'
  AND oha.status = ohst.lookup_code
  AND oha.order_id=ola.order_id
  AND pla.line_id(+)=ola.line_id
  AND pla.order_id(+)=ola.order_id
  AND ola.item_id=pma.item_id
  AND oda.line_id(+) =ola.line_id
 -- AND opla.line_id(+)= ola.line_id
  AND ola.bill_to_customer_id = lbcus.cust_account_id (+)
  AND opp.line_id(+)=ola.line_id
  AND sup.supplier_id(+)=opp.supplier_id
  AND ssa.supplier_site_id(+)=opp.supplier_site_id;;
  }


  dimension: partner_payment_id
  {type: number
    sql:${TABLE}.partner_payment_id;;}

  dimension: payment_line_id
  {type: number
    sql:${TABLE}.payment_line_id;;}

  dimension: price
  {type: number
    sql:${TABLE}.price;;}

  dimension: supplier_name
  {type: string
    sql:${TABLE}.supplier_name;;}

  dimension: Supplier_Site_Address
  {type: string
    sql:${TABLE}.Supplier_Site_Address;;}

  dimension: trx_date
  {type: date
    sql:${TABLE}.trx_date;;}

  dimension_group: trx_date_grp
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
    sql:${TABLE}.trx_date;;}

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

  dimension: line_number
  {type: string
    sql:${TABLE}.line_number;;}

  dimension: Delivery_Source
  {type: string
    sql:${TABLE}.Delivery_Source;;}

  dimension: Delivery_Date_From
  {type: string
    sql:${TABLE}.Delivery_Date_From;;}

  dimension: Delivery_Date_To
  {type: string
    sql:${TABLE}.Delivery_Date_To;;}

  dimension: Delivery_Reference
  {type: string
    sql:${TABLE}.Delivery_Reference;;}

  dimension: TRX_NUMBER
  {type: string
    sql:${TABLE}.TRX_NUMBER;;}

  dimension: cost
  {type: number
    sql:${TABLE}.cost;;}

  dimension: delivered_quantity
  {type: number
    sql:${TABLE}.delivered_quantity;;}

  dimension: payable_amt
  {type: number
    sql:${TABLE}.payable_amt;;}

  dimension: delivery_payment_status
  {type: string
    sql:${TABLE}.delivery_payment_status;;}

  dimension: billing_channel_id {
    type: string
    sql: ${TABLE}.BILLING_CHANNEL_ID ;;
  }

  dimension: Billing_Channel{
    type: string
    sql: ${TABLE}.BILLING_CHANNEL ;;
  }


  dimension: account_number {
    type: string
    sql: ${TABLE}.account_number ;;
  }


  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }


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
    <a href="https://preview.recvue.com/pages/orderDashboard.xhtml?tab=0&orderId={{order_id}}" target="_blank">{{order_number}}</a>;;
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

  dimension: line_type
  {type: string
    sql:${TABLE}.line_type;;}

  dimension: line_status
  {type: string
    sql:${TABLE}.line_status;;}

  dimension: order_status
  {type: string
    sql:${TABLE}.order_status;;}

  measure: order_count {
    type: count_distinct
    sql: ${order_id} ;;
    drill_fields: [payments*]
  }

  measure: payment_line_id_count {
    type: count_distinct
    sql: ${payment_line_id} ;;
    drill_fields: [payments*]
  }

  measure: sum_total_quantity {
    type: sum
    sql: ${quantity} ;;
    drill_fields: [payments*]
  }

  measure: sum_cost_price {
    type: sum
    sql: ${cost_price} ;;
    drill_fields: [payments*]
  }

  measure: sum_total_amount {
    type: sum
    sql: ${total_amount} ;;
    drill_fields: [payments*]
  }


  measure: sum_price {
    type: sum
    sql: ${price} ;;
    drill_fields: [payments*]
  }

  measure: sum_cost {
    type: sum
    sql: ${cost} ;;
    drill_fields: [payments*]
  }

  measure: sum_delivered_quantity {
    type: sum
    sql: ${delivered_quantity} ;;
    drill_fields: [payments*]
  }

  measure: sum_payable_amt {
    type: sum
    sql: ${payable_amt} ;;
    drill_fields: [payments*]
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

  ##Sets##
  ##=====================================##

  set: payments {
    fields: [
      account_name
      ,supplier_name
      ,order_number
      ,order_status
      ,order_category
      ,line_number
      ,item_name
      ,line_type
      ,line_status
      ,Delivery_Reference
      ,delivery_payment_status
      ,Delivery_Date_From
      ,Delivery_Date_To
      ,TRX_NUMBER
      ,cost
      ,delivered_quantity
      ,payable_amt
    ]
  }

}

# view: usages {
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
