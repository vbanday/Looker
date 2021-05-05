view: order_header_all {
  sql_table_name: ADORB.ORDER_HEADER_ALL ;;

  dimension_group: activation {
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
    sql: ${TABLE}.ACTIVATION_DATE ;;
  }

  dimension: activation_request_id {
    type: number
    sql: ${TABLE}.ACTIVATION_REQUEST_ID ;;
  }

  dimension: adserver_status {
    type: string
    sql: ${TABLE}.ADSERVER_STATUS ;;
  }

  dimension: agency_discount {
    type: number
    sql: ${TABLE}.AGENCY_DISCOUNT ;;
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

  dimension_group: attribute11_d {
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
    sql: ${TABLE}.ATTRIBUTE11_D ;;
  }

  dimension: attribute11_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE11_N ;;
  }

  dimension: attribute11_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE11_V ;;
  }

  dimension_group: attribute12_d {
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
    sql: ${TABLE}.ATTRIBUTE12_D ;;
  }

  dimension: attribute12_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE12_N ;;
  }

  dimension: attribute12_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE12_V ;;
  }

  dimension_group: attribute13_d {
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
    sql: ${TABLE}.ATTRIBUTE13_D ;;
  }

  dimension: attribute13_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE13_N ;;
  }

  dimension: attribute13_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE13_V ;;
  }

  dimension_group: attribute14_d {
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
    sql: ${TABLE}.ATTRIBUTE14_D ;;
  }

  dimension: attribute14_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE14_N ;;
  }

  dimension: attribute14_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE14_V ;;
  }

  dimension_group: attribute15_d {
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
    sql: ${TABLE}.ATTRIBUTE15_D ;;
  }

  dimension: attribute15_n {
    type: number
    sql: ${TABLE}.ATTRIBUTE15_N ;;
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

  dimension: bill_to_contact_id {
    type: number
    sql: ${TABLE}.BILL_TO_CONTACT_ID ;;
  }

  dimension: bill_to_customer_id {
    type: number
    sql: ${TABLE}.BILL_TO_CUSTOMER_ID ;;
  }

  dimension: bill_to_site_id {
    type: number
    sql: ${TABLE}.BILL_TO_SITE_ID ;;
  }

  dimension: billing_batch {
    type: string
    sql: ${TABLE}.BILLING_BATCH ;;
  }

  dimension: billing_channel {
    type: string
    sql: ${TABLE}.BILLING_CHANNEL ;;
  }

  dimension: billing_cycle {
    type: string
    sql: ${TABLE}.BILLING_CYCLE ;;
  }

  dimension: billing_frequency {
    type: string
    sql: ${TABLE}.BILLING_FREQUENCY ;;
  }

  dimension: billing_review_ind {
    type: string
    sql: ${TABLE}.BILLING_REVIEW_IND ;;
  }

  dimension_group: booked {
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
    sql: ${TABLE}.BOOKED_DATE ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }

  dimension: check_number {
    type: string
    sql: ${TABLE}.CHECK_NUMBER ;;
  }

  dimension: cr {
    type: string
    sql: ${TABLE}.CR ;;
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

  dimension: credit_card_approval_code {
    type: string
    sql: ${TABLE}.CREDIT_CARD_APPROVAL_CODE ;;
  }

  dimension_group: credit_card_expiration {
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
    sql: ${TABLE}.CREDIT_CARD_EXPIRATION_DATE ;;
  }

  dimension: credit_card_holder_name {
    type: string
    sql: ${TABLE}.CREDIT_CARD_HOLDER_NAME ;;
  }

  dimension: credit_card_number {
    type: string
    sql: ${TABLE}.CREDIT_CARD_NUMBER ;;
  }

  dimension: credit_card_type {
    type: string
    sql: ${TABLE}.CREDIT_CARD_TYPE ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: customer_contact_email {
    type: string
    sql: ${TABLE}.CUSTOMER_CONTACT_EMAIL ;;
  }

  dimension: customer_contact_id {
    type: number
    sql: ${TABLE}.CUSTOMER_CONTACT_ID ;;
  }

  dimension: customer_contact_phone {
    type: string
    sql: ${TABLE}.CUSTOMER_CONTACT_PHONE ;;
  }

  dimension: customer_po_number {
    type: string
    sql: ${TABLE}.CUSTOMER_PO_NUMBER ;;
  }

  dimension: customer_source {
    type: string
    sql: ${TABLE}.CUSTOMER_SOURCE ;;
  }

  dimension: deal_number {
    type: string
    sql: ${TABLE}.DEAL_NUMBER ;;
  }

  dimension: delivery_channel {
    type: string
    sql: ${TABLE}.DELIVERY_CHANNEL ;;
  }

  dimension_group: effective_end {
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
    sql: ${TABLE}.EFFECTIVE_END_DATE ;;
  }

  dimension_group: effective_start {
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
    sql: ${TABLE}.EFFECTIVE_START_DATE ;;
  }

  dimension: employee_id {
    type: number
    sql: ${TABLE}.EMPLOYEE_ID ;;
  }

  dimension_group: evergreen_end {
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
    sql: ${TABLE}.EVERGREEN_END_DATE ;;
  }

  dimension: evergreen_flag {
    type: string
    sql: ${TABLE}.EVERGREEN_FLAG ;;
  }

  dimension: ext_reference_number {
    type: string
    sql: ${TABLE}.EXT_REFERENCE_NUMBER ;;
  }

  dimension: insertion_order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.INSERTION_ORDER_ID ;;
  }

  dimension: intent {
    type: string
    sql: ${TABLE}.INTENT ;;
  }

  dimension: interface_adj {
    type: number
    sql: ${TABLE}.INTERFACE_ADJ ;;
  }

  dimension: interface_adj_months {
    type: number
    sql: ${TABLE}.INTERFACE_ADJ_MONTHS ;;
  }

  dimension: invoice_adj {
    type: number
    sql: ${TABLE}.INVOICE_ADJ ;;
  }

  dimension: invoice_adj_months {
    type: number
    sql: ${TABLE}.INVOICE_ADJ_MONTHS ;;
  }

  dimension: invoicing_rule {
    type: string
    sql: ${TABLE}.INVOICING_RULE ;;
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

  dimension: legal_entity_id {
    type: number
    sql: ${TABLE}.LEGAL_ENTITY_ID ;;
  }

  dimension: max_ord_bill_amt {
    type: number
    sql: ${TABLE}.MAX_ORD_BILL_AMT ;;
  }

  dimension: min_ord_bill_amt {
    type: number
    sql: ${TABLE}.MIN_ORD_BILL_AMT ;;
  }

  dimension_group: next_renewal {
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
    sql: ${TABLE}.NEXT_RENEWAL_DATE ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: order_category {
    type: string
    sql: ${TABLE}.ORDER_CATEGORY ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.ORDER_ID ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.ORDER_NUMBER ;;
    html:
    <a href="https://preview.recvue.com/pages/orderDashboard.xhtml?tab=0&orderId={{order_id}}" target="_blank">{{order_number}}</a>;;
  }

  dimension: order_type {
    type: string
    sql: ${TABLE}.ORDER_TYPE ;;
  }

  dimension: order_version {
    type: number
    sql: ${TABLE}.ORDER_VERSION ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: orig_order_id {
    type: number
    sql: ${TABLE}.ORIG_ORDER_ID ;;
  }

  dimension: overage_frequency {
    type: string
    sql: ${TABLE}.OVERAGE_FREQUENCY ;;
  }

  dimension: payment_amount {
    type: number
    sql: ${TABLE}.PAYMENT_AMOUNT ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD ;;
  }

  dimension: payment_term {
    type: string
    sql: ${TABLE}.PAYMENT_TERM ;;
  }

  dimension: price_list {
    type: string
    sql: ${TABLE}.PRICE_LIST ;;
  }

  dimension: price_list_id {
    type: number
    sql: ${TABLE}.PRICE_LIST_ID ;;
  }

  dimension: reference_number {
    type: string
    sql: ${TABLE}.REFERENCE_NUMBER ;;
  }

  dimension_group: renewal {
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
    sql: ${TABLE}.RENEWAL_DATE ;;
  }

  dimension: renewal_ind {
    type: string
    sql: ${TABLE}.RENEWAL_IND ;;
  }

  dimension: renewal_order_id {
    type: number
    sql: ${TABLE}.RENEWAL_ORDER_ID ;;
  }

  dimension: renewal_price_change {
    type: number
    sql: ${TABLE}.RENEWAL_PRICE_CHANGE ;;
  }

  dimension: renewal_term {
    type: number
    sql: ${TABLE}.RENEWAL_TERM ;;
  }

  dimension: renewed_order_id {
    type: number
    sql: ${TABLE}.RENEWED_ORDER_ID ;;
  }

  dimension: revuenue_attribute10_n {
    type: number
    sql: ${TABLE}.REVUENUE_ATTRIBUTE10_N ;;
  }

  dimension: revuenue_attribute10_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE10_V ;;
  }

  dimension: revuenue_attribute11_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE11_V ;;
  }

  dimension: revuenue_attribute12_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE12_V ;;
  }

  dimension: revuenue_attribute13_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE13_V ;;
  }

  dimension: revuenue_attribute14_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE14_V ;;
  }

  dimension: revuenue_attribute15_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE15_V ;;
  }

  dimension_group: revuenue_attribute1_d {
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
    sql: ${TABLE}.REVUENUE_ATTRIBUTE1_D ;;
  }

  dimension: revuenue_attribute1_n {
    type: number
    sql: ${TABLE}.REVUENUE_ATTRIBUTE1_N ;;
  }

  dimension: revuenue_attribute1_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE1_V ;;
  }

  dimension_group: revuenue_attribute2_d {
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
    sql: ${TABLE}.REVUENUE_ATTRIBUTE2_D ;;
  }

  dimension: revuenue_attribute2_n {
    type: number
    sql: ${TABLE}.REVUENUE_ATTRIBUTE2_N ;;
  }

  dimension: revuenue_attribute2_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE2_V ;;
  }

  dimension_group: revuenue_attribute3_d {
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
    sql: ${TABLE}.REVUENUE_ATTRIBUTE3_D ;;
  }

  dimension: revuenue_attribute3_n {
    type: number
    sql: ${TABLE}.REVUENUE_ATTRIBUTE3_N ;;
  }

  dimension: revuenue_attribute3_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE3_V ;;
  }

  dimension_group: revuenue_attribute4_d {
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
    sql: ${TABLE}.REVUENUE_ATTRIBUTE4_D ;;
  }

  dimension: revuenue_attribute4_n {
    type: number
    sql: ${TABLE}.REVUENUE_ATTRIBUTE4_N ;;
  }

  dimension: revuenue_attribute4_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE4_V ;;
  }

  dimension_group: revuenue_attribute5_d {
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
    sql: ${TABLE}.REVUENUE_ATTRIBUTE5_D ;;
  }

  dimension: revuenue_attribute5_n {
    type: number
    sql: ${TABLE}.REVUENUE_ATTRIBUTE5_N ;;
  }

  dimension: revuenue_attribute5_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE5_V ;;
  }

  dimension: revuenue_attribute6_n {
    type: number
    sql: ${TABLE}.REVUENUE_ATTRIBUTE6_N ;;
  }

  dimension: revuenue_attribute6_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE6_V ;;
  }

  dimension: revuenue_attribute7_n {
    type: number
    sql: ${TABLE}.REVUENUE_ATTRIBUTE7_N ;;
  }

  dimension: revuenue_attribute7_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE7_V ;;
  }

  dimension: revuenue_attribute8_n {
    type: number
    sql: ${TABLE}.REVUENUE_ATTRIBUTE8_N ;;
  }

  dimension: revuenue_attribute8_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE8_V ;;
  }

  dimension: revuenue_attribute9_n {
    type: number
    sql: ${TABLE}.REVUENUE_ATTRIBUTE9_N ;;
  }

  dimension: revuenue_attribute9_v {
    type: string
    sql: ${TABLE}.REVUENUE_ATTRIBUTE9_V ;;
  }

  dimension: salesrep {
    type: string
    sql: ${TABLE}.SALESREP ;;
  }

  dimension: salesrep_id {
    type: number
    sql: ${TABLE}.SALESREP_ID ;;
  }

  dimension: salresrep_id {
    type: number
    sql: ${TABLE}.SALRESREP_ID ;;
  }

  dimension: sell_to_contact_id {
    type: number
    sql: ${TABLE}.SELL_TO_CONTACT_ID ;;
  }

  dimension: sell_to_customer_id {
    type: number
    sql: ${TABLE}.SELL_TO_CUSTOMER_ID ;;
  }

  dimension: sell_to_site_id {
    type: number
    sql: ${TABLE}.SELL_TO_SITE_ID ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.SOURCE_ID ;;
  }

  dimension: spl_instr {
    type: string
    sql: ${TABLE}.SPL_INSTR ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: supp_order_chk {
    type: string
    sql: ${TABLE}.SUPP_ORDER_CHK ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.TENANT_ID ;;
  }

  dimension_group: termination {
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
    sql: ${TABLE}.TERMINATION_DATE ;;
  }

  dimension: territory_code {
    type: string
    sql: ${TABLE}.TERRITORY_CODE ;;
  }

  dimension: total_order_budget {
    type: number
    sql: ${TABLE}.TOTAL_ORDER_BUDGET ;;
  }

  measure: count {
    type: count
    drill_fields: [credit_card_holder_name, campaign_name]
  }
}
