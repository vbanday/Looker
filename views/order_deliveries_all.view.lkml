view: order_deliveries_all {
  sql_table_name: ADORB.ORDER_DELIVERIES_ALL ;;

  dimension: actual_delivered_quantity {
    type: number
    sql: ${TABLE}.ACTUAL_DELIVERED_QUANTITY ;;
  }

  dimension: adjustment_delivery_type {
    type: string
    sql: ${TABLE}.ADJUSTMENT_DELIVERY_TYPE ;;
  }

  dimension: advertiser {
    type: string
    sql: ${TABLE}.ADVERTISER ;;
  }

  dimension_group: attribute10_d {
    type: time
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
    sql: ${TABLE}.ATTRIBUTE10_D ;;
  }

  dimension: attribute10_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE10_N ;;
  }

  dimension: attribute10_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE10_V ;;
  }

  dimension: attribute11_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE11_V ;;
  }

  dimension: attribute12_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE12_V ;;
  }

  dimension: attribute13_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE13_V ;;
  }

  dimension: attribute14_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE14_V ;;
  }

  dimension: attribute15_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE15_V ;;
  }

  dimension: attribute16_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE16_V ;;
  }

  dimension: attribute17_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE17_V ;;
  }

  dimension: attribute18_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE18_V ;;
  }

  dimension: attribute19_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE19_V ;;
  }

  dimension_group: attribute1_d {
    type: time
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
    sql: ${TABLE}.ATTRIBUTE1_D ;;
  }

  dimension: attribute1_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE1_N ;;
  }

  dimension: attribute1_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE1_V ;;
  }

  dimension: attribute20_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE20_V ;;
  }

  dimension: attribute21_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE21_V ;;
  }

  dimension: attribute22_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE22_V ;;
  }

  dimension: attribute23_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE23_V ;;
  }

  dimension: attribute24_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE24_V ;;
  }

  dimension: attribute25_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE25_V ;;
  }

  dimension: attribute26_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE26_V ;;
  }

  dimension: attribute27_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE27_V ;;
  }

  dimension: attribute28_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE28_V ;;
  }

  dimension: attribute29_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE29_V ;;
  }

  dimension_group: attribute2_d {
    type: time
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
    sql: ${TABLE}.ATTRIBUTE2_D ;;
  }

  dimension: attribute2_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE2_N ;;
  }

  dimension: attribute2_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE2_V ;;
  }

  dimension: attribute30_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE30_V ;;
  }

  dimension: attribute31_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE31_V ;;
  }

  dimension: attribute32_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE32_V ;;
  }

  dimension: attribute33_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE33_V ;;
  }

  dimension: attribute34_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE34_V ;;
  }

  dimension: attribute35_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE35_V ;;
  }

  dimension: attribute36_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE36_V ;;
  }

  dimension: attribute37_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE37_V ;;
  }

  dimension: attribute38_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE38_V ;;
  }

  dimension: attribute39_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE39_V ;;
  }

  dimension_group: attribute3_d {
    type: time
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
    sql: ${TABLE}.ATTRIBUTE3_D ;;
  }

  dimension: attribute3_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE3_N ;;
  }

  dimension: attribute3_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE3_V ;;
  }

  dimension: attribute40_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE40_V ;;
  }

  dimension_group: attribute4_d {
    type: time
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
    sql: ${TABLE}.ATTRIBUTE4_D ;;
  }

  dimension: attribute4_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE4_N ;;
  }

  dimension: attribute4_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE4_V ;;
  }

  dimension_group: attribute5_d {
    type: time
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
    sql: ${TABLE}.ATTRIBUTE5_D ;;
  }

  dimension: attribute5_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE5_N ;;
  }

  dimension: attribute5_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE5_V ;;
  }

  dimension_group: attribute6_d {
    type: time
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
    sql: ${TABLE}.ATTRIBUTE6_D ;;
  }

  dimension: attribute6_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE6_N ;;
  }

  dimension: attribute6_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE6_V ;;
  }

  dimension_group: attribute7_d {
    type: time
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
    sql: ${TABLE}.ATTRIBUTE7_D ;;
  }

  dimension: attribute7_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE7_N ;;
  }

  dimension: attribute7_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE7_V ;;
  }

  dimension_group: attribute8_d {
    type: time
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
    sql: ${TABLE}.ATTRIBUTE8_D ;;
  }

  dimension: attribute8_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE8_N ;;
  }

  dimension: attribute8_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE8_V ;;
  }

  dimension_group: attribute9_d {
    type: time
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
    sql: ${TABLE}.ATTRIBUTE9_D ;;
  }

  dimension: attribute9_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE9_N ;;
  }

  dimension: attribute9_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE9_V ;;
  }

  dimension: attribute_context {
    type: string
    sql: ${TABLE}.ATTRIBUTE_CONTEXT ;;
  }

  dimension: audit_req_id {
    type: string
    sql: ${TABLE}.AUDIT_REQ_ID ;;
  }

  dimension: batch_number {
    type: string
    sql: ${TABLE}.BATCH_NUMBER ;;
  }

  dimension: bill_amount {
    type: number
    sql: ${TABLE}.BILL_AMOUNT ;;
  }

  dimension: bill_tier_base_amount {
    type: number
    sql: ${TABLE}.BILL_TIER_BASE_AMOUNT ;;
  }

  dimension: bill_tier_variable_amount {
    type: number
    sql: ${TABLE}.BILL_TIER_VARIABLE_AMOUNT ;;
  }

  dimension: bill_tier_variance_amount {
    type: number
    sql: ${TABLE}.BILL_TIER_VARIANCE_AMOUNT ;;
  }

  dimension: billed_flag {
    type: string
    sql: ${TABLE}.BILLED_FLAG ;;
  }

  dimension: billing_exclude_flag {
    type: string
    sql: ${TABLE}.BILLING_EXCLUDE_FLAG ;;
  }

  dimension: billing_sch_id {
    type: number
    sql: ${TABLE}.BILLING_SCH_ID ;;
  }

  dimension: bonus_quantity {
    type: number
    sql: ${TABLE}.BONUS_QUANTITY ;;
  }

  dimension: campaign_identifier {
    type: number
    value_format_name: id
    sql: ${TABLE}.CAMPAIGN_IDENTIFIER ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }

  dimension: clicked_quantity {
    type: number
    sql: ${TABLE}.CLICKED_QUANTITY ;;
  }

  dimension: component {
    type: string
    sql: ${TABLE}.COMPONENT ;;
  }

  dimension: contact_id {
    type: number
    sql: ${TABLE}.CONTACT_ID ;;
  }

  dimension: copy_flag {
    type: string
    sql: ${TABLE}.COPY_FLAG ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.COST ;;
  }

  dimension: cost_error_message {
    type: string
    sql: ${TABLE}.COST_ERROR_MESSAGE ;;
  }

  dimension: cost_override {
    type: string
    sql: ${TABLE}.COST_OVERRIDE ;;
  }

  dimension_group: costed {
    type: time
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
    sql: ${TABLE}.COSTED_DATE ;;
  }

  dimension: costing_rule_id {
    type: number
    sql: ${TABLE}.COSTING_RULE_ID ;;
  }

  dimension: created_by {
    type: number
    sql: ${TABLE}.CREATED_BY ;;
  }

  dimension_group: creation {
    type: time
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
    sql: ${TABLE}.CREATION_DATE ;;
  }

  dimension: creative_identifier {
    type: number
    value_format_name: id
    sql: ${TABLE}.CREATIVE_IDENTIFIER ;;
  }

  dimension: creative_name {
    type: string
    sql: ${TABLE}.CREATIVE_NAME ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: delivered_quantity {
    type: number
    sql: ${TABLE}.DELIVERED_QUANTITY ;;
  }

  dimension_group: delivery_date_from {
    type: time
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
    sql: ${TABLE}.DELIVERY_DATE_FROM ;;
  }

  dimension_group: delivery_date_to {
    type: time
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
    sql: ${TABLE}.DELIVERY_DATE_TO ;;
  }

  dimension: delivery_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DELIVERY_ID ;;
  }

  dimension: delivery_price {
    type: number
    sql: ${TABLE}.DELIVERY_PRICE ;;
  }

  dimension: delivery_reference {
    type: string
    sql: ${TABLE}.DELIVERY_REFERENCE ;;
  }

  dimension: delivery_status {
    type: string
    sql: ${TABLE}.DELIVERY_STATUS ;;
  }

  dimension: delivery_type {
    type: string
    sql: ${TABLE}.DELIVERY_TYPE ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.ERROR_MESSAGE ;;
  }

  dimension: fin_app_org_id {
    type: number
    sql: ${TABLE}.FIN_APP_ORG_ID ;;
  }

  dimension: hierarchy_attribute1 {
    type: string
    sql: ${TABLE}.HIERARCHY_ATTRIBUTE1 ;;
  }

  dimension: hierarchy_attribute1_v {
    type: string
    sql: ${TABLE}.HIERARCHY_ATTRIBUTE1_V ;;
  }

  dimension: hierarchy_attribute2 {
    type: string
    sql: ${TABLE}.HIERARCHY_ATTRIBUTE2 ;;
  }

  dimension: hierarchy_attribute2_v {
    type: string
    sql: ${TABLE}.HIERARCHY_ATTRIBUTE2_V ;;
  }

  dimension: hierarchy_attribute3 {
    type: string
    sql: ${TABLE}.HIERARCHY_ATTRIBUTE3 ;;
  }

  dimension: hierarchy_attribute3_v {
    type: string
    sql: ${TABLE}.HIERARCHY_ATTRIBUTE3_V ;;
  }

  dimension: hierarchy_attribute4 {
    type: string
    sql: ${TABLE}.HIERARCHY_ATTRIBUTE4 ;;
  }

  dimension: hierarchy_attribute4_v {
    type: string
    sql: ${TABLE}.HIERARCHY_ATTRIBUTE4_V ;;
  }

  dimension: hierarchy_attribute5 {
    type: string
    sql: ${TABLE}.HIERARCHY_ATTRIBUTE5 ;;
  }

  dimension: hierarchy_attribute5_v {
    type: string
    sql: ${TABLE}.HIERARCHY_ATTRIBUTE5_V ;;
  }

  dimension_group: last_update {
    type: time
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
    sql: ${TABLE}.LAST_UPDATE_DATE ;;
  }

  dimension: last_updated_by {
    type: number
    sql: ${TABLE}.LAST_UPDATED_BY ;;
  }

  dimension_group: legacy_from {
    type: time
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
    sql: ${TABLE}.LEGACY_FROM_DATE ;;
  }

  dimension_group: legacy_to {
    type: time
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
    sql: ${TABLE}.LEGACY_TO_DATE ;;
  }

  dimension: legal_entity_id {
    type: number
    sql: ${TABLE}.LEGAL_ENTITY_ID ;;
  }

  dimension: line_id {
    type: number
    sql: ${TABLE}.LINE_ID ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.LOCATION_ID ;;
  }

  dimension: make_good_quantity {
    type: number
    sql: ${TABLE}.MAKE_GOOD_QUANTITY ;;
  }

  dimension: metric1 {
    type: number
    sql: ${TABLE}.METRIC1 ;;
  }

  dimension: metric2 {
    type: number
    sql: ${TABLE}.METRIC2 ;;
  }

  dimension: metric3 {
    type: number
    sql: ${TABLE}.METRIC3 ;;
  }

  dimension: metric4 {
    type: number
    sql: ${TABLE}.METRIC4 ;;
  }

  dimension: metric5 {
    type: number
    sql: ${TABLE}.METRIC5 ;;
  }

  dimension: metric6 {
    type: number
    sql: ${TABLE}.METRIC6 ;;
  }

  dimension: order_fulfillment_id {
    type: number
    sql: ${TABLE}.ORDER_FULFILLMENT_ID ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.ORDER_ID ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: overage {
    type: number
    sql: ${TABLE}.OVERAGE ;;
  }

  dimension: pay_currency {
    type: string
    sql: ${TABLE}.PAY_CURRENCY ;;
  }

  dimension: pay_del_status {
    type: string
    sql: ${TABLE}.PAY_DEL_STATUS ;;
  }

  dimension: pay_line_id {
    type: number
    sql: ${TABLE}.PAY_LINE_ID ;;
  }

  dimension: pay_order_id {
    type: number
    sql: ${TABLE}.PAY_ORDER_ID ;;
  }

  dimension: pay_org_id {
    type: number
    sql: ${TABLE}.PAY_ORG_ID ;;
  }

  dimension: pay_ref_id {
    type: string
    sql: ${TABLE}.PAY_REF_ID ;;
  }

  dimension: pay_sch_id {
    type: number
    sql: ${TABLE}.PAY_SCH_ID ;;
  }

  dimension: pay_schedule_id {
    type: number
    sql: ${TABLE}.PAY_SCHEDULE_ID ;;
  }

  dimension: pay_tier_base_amount {
    type: number
    sql: ${TABLE}.PAY_TIER_BASE_AMOUNT ;;
  }

  dimension: pay_tier_variable_amount {
    type: number
    sql: ${TABLE}.PAY_TIER_VARIABLE_AMOUNT ;;
  }

  dimension: pay_tier_variance_amount {
    type: number
    sql: ${TABLE}.PAY_TIER_VARIANCE_AMOUNT ;;
  }

  dimension: payable_amt {
    type: number
    sql: ${TABLE}.PAYABLE_AMT ;;
  }

  dimension: payment_invoice_number {
    type: string
    sql: ${TABLE}.PAYMENT_INVOICE_NUMBER ;;
  }

  dimension: payment_sch_status {
    type: string
    sql: ${TABLE}.PAYMENT_SCH_STATUS ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}.PAYMENT_STATUS ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.POINTS ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.PRICE ;;
  }

  dimension: price_override {
    type: string
    sql: ${TABLE}.PRICE_OVERRIDE ;;
  }

  dimension_group: priced {
    type: time
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
    sql: ${TABLE}.PRICED_DATE ;;
  }

  dimension: priced_quantity {
    type: number
    sql: ${TABLE}.PRICED_QUANTITY ;;
  }

  dimension: pricing_attribute1 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE1 ;;
  }

  dimension: pricing_attribute10 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE10 ;;
  }

  dimension: pricing_attribute11 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE11 ;;
  }

  dimension: pricing_attribute12 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE12 ;;
  }

  dimension: pricing_attribute13 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE13 ;;
  }

  dimension: pricing_attribute14 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE14 ;;
  }

  dimension: pricing_attribute15 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE15 ;;
  }

  dimension: pricing_attribute16 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE16 ;;
  }

  dimension: pricing_attribute17 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE17 ;;
  }

  dimension: pricing_attribute18 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE18 ;;
  }

  dimension: pricing_attribute19 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE19 ;;
  }

  dimension: pricing_attribute2 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE2 ;;
  }

  dimension: pricing_attribute20 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE20 ;;
  }

  dimension: pricing_attribute21 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE21 ;;
  }

  dimension: pricing_attribute22 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE22 ;;
  }

  dimension: pricing_attribute23 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE23 ;;
  }

  dimension: pricing_attribute24 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE24 ;;
  }

  dimension: pricing_attribute25 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE25 ;;
  }

  dimension: pricing_attribute26 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE26 ;;
  }

  dimension: pricing_attribute27 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE27 ;;
  }

  dimension: pricing_attribute28 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE28 ;;
  }

  dimension: pricing_attribute29 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE29 ;;
  }

  dimension: pricing_attribute3 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE3 ;;
  }

  dimension: pricing_attribute30 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE30 ;;
  }

  dimension: pricing_attribute4 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE4 ;;
  }

  dimension: pricing_attribute5 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE5 ;;
  }

  dimension: pricing_attribute6 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE6 ;;
  }

  dimension: pricing_attribute7 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE7 ;;
  }

  dimension: pricing_attribute8 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE8 ;;
  }

  dimension: pricing_attribute9 {
    type: string
    sql: ${TABLE}.PRICING_ATTRIBUTE9 ;;
  }

  dimension: pricing_batch {
    type: string
    sql: ${TABLE}.PRICING_BATCH ;;
  }

  dimension: pricing_in_process {
    type: string
    sql: ${TABLE}.PRICING_IN_PROCESS ;;
  }

  dimension: pricing_rule_id {
    type: number
    sql: ${TABLE}.PRICING_RULE_ID ;;
  }

  dimension: processed_flag {
    type: string
    sql: ${TABLE}.PROCESSED_FLAG ;;
  }

  dimension: rebill_batch_id {
    type: number
    sql: ${TABLE}.REBILL_BATCH_ID ;;
  }

  dimension_group: report {
    type: time
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
    sql: ${TABLE}.REPORT_DATE ;;
  }

  dimension: request_id {
    type: number
    sql: ${TABLE}.REQUEST_ID ;;
  }

  dimension: revenue_error_message {
    type: string
    sql: ${TABLE}.REVENUE_ERROR_MESSAGE ;;
  }

  dimension_group: revenue_identified {
    type: time
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
    sql: ${TABLE}.REVENUE_IDENTIFIED_DATE ;;
  }

  dimension: revenue_status {
    type: string
    sql: ${TABLE}.REVENUE_STATUS ;;
  }

  dimension: sell_to_cust_orig_sys_ref {
    type: string
    sql: ${TABLE}.SELL_TO_CUST_ORIG_SYS_REF ;;
  }

  dimension: sell_to_customer_number {
    type: string
    sql: ${TABLE}.SELL_TO_CUSTOMER_NUMBER ;;
  }

  dimension: sell_to_site_number {
    type: string
    sql: ${TABLE}.SELL_TO_SITE_NUMBER ;;
  }

  dimension: sell_to_site_orig_sys_ref {
    type: string
    sql: ${TABLE}.SELL_TO_SITE_ORIG_SYS_REF ;;
  }

  dimension: shopping {
    type: number
    sql: ${TABLE}.SHOPPING ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.SOURCE_ID ;;
  }

  dimension: source_quantity {
    type: number
    sql: ${TABLE}.SOURCE_QUANTITY ;;
  }

  dimension: supplier_id {
    type: number
    sql: ${TABLE}.SUPPLIER_ID ;;
  }

  dimension: supplier_site_id {
    type: number
    sql: ${TABLE}.SUPPLIER_SITE_ID ;;
  }

  dimension: survey {
    type: number
    sql: ${TABLE}.SURVEY ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.TENANT_ID ;;
  }

  dimension: tracking_options {
    type: string
    sql: ${TABLE}.TRACKING_OPTIONS ;;
  }

  dimension: uom_code {
    type: string
    sql: ${TABLE}.UOM_CODE ;;
  }

  dimension: user_costed_flag {
    type: string
    sql: ${TABLE}.USER_COSTED_FLAG ;;
  }

  dimension: user_priced_flag {
    type: string
    sql: ${TABLE}.USER_PRICED_FLAG ;;
  }

  measure: count {
    type: count
    drill_fields: [creative_name, campaign_name]
  }
}
