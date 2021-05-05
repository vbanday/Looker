view: order_lines_all {
  sql_table_name: ADORB.ORDER_LINES_ALL ;;

  dimension: accounting_rule {
    type: string
    sql: ${TABLE}.ACCOUNTING_RULE ;;
  }

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

  dimension: ad_unit_node_id {
    type: number
    sql: ${TABLE}.AD_UNIT_NODE_ID ;;
  }

  dimension: adserver_status {
    type: string
    sql: ${TABLE}.ADSERVER_STATUS ;;
  }

  dimension: agency_discount {
    type: number
    sql: ${TABLE}.AGENCY_DISCOUNT ;;
  }

  dimension: apply_pre_payment {
    type: string
    sql: ${TABLE}.APPLY_PRE_PAYMENT ;;
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

  dimension: back_billing {
    type: string
    sql: ${TABLE}.BACK_BILLING ;;
  }

  dimension: batch_number {
    type: string
    sql: ${TABLE}.BATCH_NUMBER ;;
  }

  dimension_group: bill_event_actual {
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
    sql: ${TABLE}.BILL_EVENT_ACTUAL_DATE ;;
  }

  dimension_group: bill_event_expected {
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
    sql: ${TABLE}.BILL_EVENT_EXPECTED_DATE ;;
  }

  dimension: bill_start_term_name {
    type: string
    sql: ${TABLE}.BILL_START_TERM_NAME ;;
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

  dimension: bill_unfulfilled {
    type: string
    sql: ${TABLE}.BILL_UNFULFILLED ;;
  }

  dimension: bill_zero_amount {
    type: string
    sql: ${TABLE}.BILL_ZERO_AMOUNT ;;
  }

  dimension: billed_quantity {
    type: number
    sql: ${TABLE}.BILLED_QUANTITY ;;
  }

  dimension: billing_batch {
    type: string
    sql: ${TABLE}.BILLING_BATCH ;;
  }

  dimension: billing_channel {
    type: string
    sql: ${TABLE}.BILLING_CHANNEL ;;
  }

  dimension: billing_channel_id {
    type: string
    sql: ${TABLE}.BILLING_CHANNEL_ID ;;
  }

  dimension: billing_complete {
    type: string
    sql: ${TABLE}.BILLING_COMPLETE ;;
  }

  dimension: billing_cycle {
    type: string
    sql: ${TABLE}.BILLING_CYCLE ;;
  }

  dimension: billing_event_released {
    type: string
    sql: ${TABLE}.BILLING_EVENT_RELEASED ;;
  }

  dimension: billing_frequency {
    type: string
    sql: ${TABLE}.BILLING_FREQUENCY ;;
  }

  dimension: billing_quantity {
    type: number
    sql: ${TABLE}.BILLING_QUANTITY ;;
  }

  dimension: billing_review_ind {
    type: string
    sql: ${TABLE}.BILLING_REVIEW_IND ;;
  }

  dimension: billing_sch_status {
    type: string
    sql: ${TABLE}.BILLING_SCH_STATUS ;;
  }

  dimension: billing_status {
    type: string
    sql: ${TABLE}.BILLING_STATUS ;;
  }

  dimension: billing_trigger {
    type: string
    sql: ${TABLE}.BILLING_TRIGGER ;;
  }

  dimension: bonus_del {
    type: number
    sql: ${TABLE}.BONUS_DEL ;;
  }

  dimension: bonus_percentage {
    type: number
    sql: ${TABLE}.BONUS_PERCENTAGE ;;
  }

  dimension: bonus_quantity {
    type: number
    sql: ${TABLE}.BONUS_QUANTITY ;;
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

  dimension: clicked_quantity {
    type: number
    sql: ${TABLE}.CLICKED_QUANTITY ;;
  }

  dimension: commit_amount {
    type: number
    sql: ${TABLE}.COMMIT_AMOUNT ;;
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

  dimension: ctr {
    type: string
    sql: ${TABLE}.CTR ;;
  }

  dimension: delivered_quantity {
    type: number
    sql: ${TABLE}.DELIVERED_QUANTITY ;;
  }

  dimension: delivery_channel {
    type: string
    sql: ${TABLE}.DELIVERY_CHANNEL ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: disbursement_type {
    type: string
    sql: ${TABLE}.DISBURSEMENT_TYPE ;;
  }

  dimension: do_not_bill_upon_termination {
    type: string
    sql: ${TABLE}.DO_NOT_BILL_UPON_TERMINATION ;;
  }

  dimension_group: effective_cr {
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
    sql: ${TABLE}.EFFECTIVE_CR_DATE ;;
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

  dimension: entitlement_id {
    type: number
    sql: ${TABLE}.ENTITLEMENT_ID ;;
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

  dimension: free_days {
    type: number
    sql: ${TABLE}.FREE_DAYS ;;
  }

  dimension: free_days_eligible {
    type: string
    sql: ${TABLE}.FREE_DAYS_ELIGIBLE ;;
  }

  dimension: free_eom {
    type: string
    sql: ${TABLE}.FREE_EOM ;;
  }

  dimension: free_months {
    type: string
    sql: ${TABLE}.FREE_MONTHS ;;
  }

  dimension: free_months_within_period {
    type: string
    sql: ${TABLE}.FREE_MONTHS_WITHIN_PERIOD ;;
  }

  dimension_group: free_period_end {
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
    sql: ${TABLE}.FREE_PERIOD_END_DATE ;;
  }

  dimension_group: free_period_start {
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
    sql: ${TABLE}.FREE_PERIOD_START_DATE ;;
  }

  dimension: freight_charge {
    type: number
    sql: ${TABLE}.FREIGHT_CHARGE ;;
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

  dimension: item_description {
    type: string
    sql: ${TABLE}.ITEM_DESCRIPTION ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.ITEM_ID ;;
  }

  dimension: item_source {
    type: string
    sql: ${TABLE}.ITEM_SOURCE ;;
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

  dimension_group: last_updated_datetime {
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
    sql: ${TABLE}.LAST_UPDATED_DATETIME ;;
  }

  dimension: last_updated_user {
    type: number
    sql: ${TABLE}.LAST_UPDATED_USER ;;
  }

  dimension: legal_entity_id {
    type: number
    sql: ${TABLE}.LEGAL_ENTITY_ID ;;
  }

  dimension: line_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.LINE_ID ;;
  }

  dimension: line_number {
    type: number
    sql: ${TABLE}.LINE_NUMBER ;;
  }

  dimension: line_payment_term {
    type: string
    sql: ${TABLE}.LINE_PAYMENT_TERM ;;
  }

  dimension: line_reference_number {
    type: string
    sql: ${TABLE}.LINE_REFERENCE_NUMBER ;;
  }

  dimension: line_source {
    type: string
    sql: ${TABLE}.LINE_SOURCE ;;
  }

  dimension: line_tax {
    type: number
    sql: ${TABLE}.LINE_TAX ;;
  }

  dimension: line_tax_code {
    type: string
    sql: ${TABLE}.LINE_TAX_CODE ;;
  }

  dimension: line_type {
    type: string
    sql: ${TABLE}.LINE_TYPE ;;
  }

  dimension: list_amount {
    type: number
    sql: ${TABLE}.LIST_AMOUNT ;;
  }

  dimension: list_overage_fee {
    type: number
    sql: ${TABLE}.LIST_OVERAGE_FEE ;;
  }

  dimension: list_unit_price {
    type: number
    sql: ${TABLE}.LIST_UNIT_PRICE ;;
  }

  dimension: list_usage_fee {
    type: number
    sql: ${TABLE}.LIST_USAGE_FEE ;;
  }

  dimension: location_cap_period {
    type: string
    sql: ${TABLE}.LOCATION_CAP_PERIOD ;;
  }

  dimension: location_max_amt {
    type: number
    sql: ${TABLE}.LOCATION_MAX_AMT ;;
  }

  dimension: location_min_amt {
    type: number
    sql: ${TABLE}.LOCATION_MIN_AMT ;;
  }

  dimension: make_good_billing {
    type: string
    sql: ${TABLE}.MAKE_GOOD_BILLING ;;
  }

  dimension: make_good_del {
    type: number
    sql: ${TABLE}.MAKE_GOOD_DEL ;;
  }

  dimension: make_good_qty {
    type: number
    sql: ${TABLE}.MAKE_GOOD_QTY ;;
  }

  dimension: make_good_resolution {
    type: string
    sql: ${TABLE}.MAKE_GOOD_RESOLUTION ;;
  }

  dimension: make_good_revenue {
    type: string
    sql: ${TABLE}.MAKE_GOOD_REVENUE ;;
  }

  dimension: max_line_bill_amt {
    type: number
    sql: ${TABLE}.MAX_LINE_BILL_AMT ;;
  }

  dimension: max_quantity {
    type: number
    sql: ${TABLE}.MAX_QUANTITY ;;
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

  dimension: misc_charge {
    type: number
    sql: ${TABLE}.MISC_CHARGE ;;
  }

  dimension: no_of_locations {
    type: number
    sql: ${TABLE}.NO_OF_LOCATIONS ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.ORDER_ID ;;
  }

  dimension: ordered_quantity {
    type: number
    sql: ${TABLE}.ORDERED_QUANTITY ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: orig_line_id {
    type: number
    sql: ${TABLE}.ORIG_LINE_ID ;;
  }

  dimension: orig_unit_price {
    type: number
    sql: ${TABLE}.ORIG_UNIT_PRICE ;;
  }

  dimension: over_delivery {
    type: string
    sql: ${TABLE}.OVER_DELIVERY ;;
  }

  dimension: overage_fee {
    type: number
    sql: ${TABLE}.OVERAGE_FEE ;;
  }

  dimension: overage_frequency {
    type: string
    sql: ${TABLE}.OVERAGE_FREQUENCY ;;
  }

  dimension: payment_term {
    type: string
    sql: ${TABLE}.PAYMENT_TERM ;;
  }

  dimension: placement_id {
    type: number
    sql: ${TABLE}.PLACEMENT_ID ;;
  }

  dimension: po_number {
    type: string
    sql: ${TABLE}.PO_NUMBER ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.POINTS ;;
  }

  dimension: price_sch_refresh {
    type: string
    sql: ${TABLE}.PRICE_SCH_REFRESH ;;
  }

  dimension: pro_rate_term_name {
    type: string
    sql: ${TABLE}.PRO_RATE_TERM_NAME ;;
  }

  dimension: reassess_flag {
    type: string
    sql: ${TABLE}.REASSESS_FLAG ;;
  }

  dimension: renewal_ind {
    type: string
    sql: ${TABLE}.RENEWAL_IND ;;
  }

  dimension: renewal_price_change {
    type: number
    sql: ${TABLE}.RENEWAL_PRICE_CHANGE ;;
  }

  dimension_group: rev_end {
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
    sql: ${TABLE}.REV_END_DATE ;;
  }

  dimension_group: rev_event_actual {
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
    sql: ${TABLE}.REV_EVENT_ACTUAL_DATE ;;
  }

  dimension_group: rev_event_expected {
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
    sql: ${TABLE}.REV_EVENT_EXPECTED_DATE ;;
  }

  dimension: rev_refresh_flag {
    type: string
    sql: ${TABLE}.REV_REFRESH_FLAG ;;
  }

  dimension_group: rev_start {
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
    sql: ${TABLE}.REV_START_DATE ;;
  }

  dimension: revenue_allocation_type {
    type: string
    sql: ${TABLE}.REVENUE_ALLOCATION_TYPE ;;
  }

  dimension: revenue_amount {
    type: number
    sql: ${TABLE}.REVENUE_AMOUNT ;;
  }

  dimension: revenue_event {
    type: string
    sql: ${TABLE}.REVENUE_EVENT ;;
  }

  dimension: revenue_event_released {
    type: string
    sql: ${TABLE}.REVENUE_EVENT_RELEASED ;;
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

  dimension: revenue_quantity {
    type: number
    sql: ${TABLE}.REVENUE_QUANTITY ;;
  }

  dimension: revenue_status {
    type: string
    sql: ${TABLE}.REVENUE_STATUS ;;
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

  dimension: shopping {
    type: number
    sql: ${TABLE}.SHOPPING ;;
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

  dimension: stop_billing {
    type: string
    sql: ${TABLE}.STOP_BILLING ;;
  }

  dimension: survey {
    type: number
    sql: ${TABLE}.SURVEY ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.TENANT_ID ;;
  }

  dimension: term_header_id {
    type: number
    sql: ${TABLE}.TERM_HEADER_ID ;;
  }

  dimension: terminated_quantity {
    type: number
    sql: ${TABLE}.TERMINATED_QUANTITY ;;
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

  dimension: tier_header_id {
    type: number
    sql: ${TABLE}.TIER_HEADER_ID ;;
  }

  dimension: tier_pricing {
    type: string
    sql: ${TABLE}.TIER_PRICING ;;
  }

  dimension: tracking_options {
    type: string
    sql: ${TABLE}.TRACKING_OPTIONS ;;
  }

  dimension: under_delivery {
    type: string
    sql: ${TABLE}.UNDER_DELIVERY ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.UNIT_PRICE ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.UOM ;;
  }

  dimension: uom_conv_unit_price {
    type: number
    sql: ${TABLE}.UOM_CONV_UNIT_PRICE ;;
  }

  dimension: usage_fee {
    type: number
    sql: ${TABLE}.USAGE_FEE ;;
  }

  measure: count {
    type: count
    drill_fields: [bill_start_term_name, pro_rate_term_name]
  }
}
