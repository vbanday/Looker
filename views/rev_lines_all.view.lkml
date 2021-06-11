view: rev_lines_all {
  sql_table_name: ADORB.REV_LINES_ALL ;;

  dimension: accounting_attributes {
    type: string
    sql: ${TABLE}.ACCOUNTING_ATTRIBUTES ;;
  }

  dimension: accounting_id {
    type: number
    sql: ${TABLE}.ACCOUNTING_ID ;;
  }

  dimension_group: additional_rev_end {
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
    sql: ${TABLE}.ADDITIONAL_REV_END_DATE ;;
  }

  dimension_group: additional_rev_start {
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
    sql: ${TABLE}.ADDITIONAL_REV_START_DATE ;;
  }

  dimension_group: allocation_end {
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
    sql: ${TABLE}.ALLOCATION_END_DATE ;;
  }

  dimension_group: allocation_start {
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
    sql: ${TABLE}.ALLOCATION_START_DATE ;;
  }

  dimension_group: amendment_effective {
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
    sql: ${TABLE}.AMENDMENT_EFFECTIVE_DATE ;;
  }

  dimension: amendment_reason {
    type: string
    sql: ${TABLE}.AMENDMENT_REASON ;;
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

  dimension: attribute_category {
    type: string
    sql: ${TABLE}.ATTRIBUTE_CATEGORY ;;
  }

  dimension: balance_no_of_days {
    type: number
    sql: ${TABLE}.BALANCE_NO_OF_DAYS ;;
  }

  dimension: batch_id {
    type: string
    sql: ${TABLE}.BATCH_ID ;;
  }

  dimension: bill_to_customer_id {
    type: number
    sql: ${TABLE}.BILL_TO_CUSTOMER_ID ;;
  }

  dimension: bill_to_customer_name {
    type: string
    sql: ${TABLE}.BILL_TO_CUSTOMER_NAME ;;
  }

  dimension: bill_to_customer_number {
    type: string
    sql: ${TABLE}.BILL_TO_CUSTOMER_NUMBER ;;
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

  dimension: carve_deferred_segment {
    type: string
    sql: ${TABLE}.CARVE_DEFERRED_SEGMENT ;;
  }

  dimension: carve_impairment_amount {
    type: number
    sql: ${TABLE}.CARVE_IMPAIRMENT_AMOUNT ;;
  }

  dimension: carve_rev_recog_to_date {
    type: number
    sql: ${TABLE}.CARVE_REV_RECOG_TO_DATE ;;
  }

  dimension: carve_rev_segment {
    type: string
    sql: ${TABLE}.CARVE_REV_SEGMENT ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }

  dimension: contingency_flag {
    type: string
    sql: ${TABLE}.CONTINGENCY_FLAG ;;
  }

  dimension: contingency_reason {
    type: string
    sql: ${TABLE}.CONTINGENCY_REASON ;;
  }

  dimension: contract_asset_segment {
    type: string
    sql: ${TABLE}.CONTRACT_ASSET_SEGMENT ;;
  }

  dimension: contract_liability_segment {
    type: string
    sql: ${TABLE}.CONTRACT_LIABILITY_SEGMENT ;;
  }

  dimension: contractual_impairment_amount {
    type: number
    sql: ${TABLE}.CONTRACTUAL_IMPAIRMENT_AMOUNT ;;
  }

  measure: sum_contractual_impairment_amount {
    type: sum
    sql: ${contractual_impairment_amount}. ;;
  }

  dimension: contractual_rev_recog_to_date {
    type: number
    sql: ${TABLE}.CONTRACTUAL_REV_RECOG_TO_DATE ;;
  }

  dimension: created_accounting_period {
    type: string
    sql: ${TABLE}.CREATED_ACCOUNTING_PERIOD ;;
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

  dimension: cumu_net_revenue {
    type: number
    sql: ${TABLE}.CUMU_NET_REVENUE ;;
  }

  measure: sum_cumu_net_revenue {
    type: sum
    sql: ${cumu_net_revenue} ;;
  }

  dimension: cumu_revenue_amount {
    type: number
    sql: ${TABLE}.CUMU_REVENUE_AMOUNT ;;
  }

  measure: sum_cumu_revenue_amount {
    type: sum
    sql: ${cumu_revenue_amount} ;;
  }

  dimension: cumulative_carve_amount {
    type: number
    sql: ${TABLE}.CUMULATIVE_CARVE_AMOUNT ;;
  }

  measure: sum_cumulative_carve_amount {
    type: sum
    sql: ${cumulative_carve_amount} ;;
  }

  dimension: cumulative_net_revenue {
    type: number
    sql: ${TABLE}.CUMULATIVE_NET_REVENUE ;;
  }

  measure: sum_cumulative_net_revenue {
    type: sum
    sql: ${cumulative_net_revenue} ;;
    drill_fields: [pobdtl*]
  }


  dimension: curr_rem_carve_rev_amt {
    type: number
    sql: ${TABLE}.CURR_REM_CARVE_REV_AMT ;;
  }

  measure: sum_curr_rem_carve_rev_amt {
    type: sum
    sql: ${curr_rem_carve_rev_amt} ;;
  }

  dimension: curr_rem_contractual_rev_amt {
    type: number
    sql: ${TABLE}.CURR_REM_CONTRACTUAL_REV_AMT ;;
  }

  measure: sum_curr_rem_contractual_rev_amt {
    type: sum
    sql: ${curr_rem_contractual_rev_amt} ;;
  }

  dimension: current_net_revenue {
    type: number
    sql: ${TABLE}.CURRENT_NET_REVENUE ;;
  }

  measure: sum_current_net_revenue {
    type: sum
    sql: ${current_net_revenue} ;;
  }

  dimension: current_ssp_price {
    type: number
    sql: ${TABLE}.CURRENT_SSP_PRICE ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.DISCOUNT_AMOUNT ;;
  }

  measure: sum_discount_amount {
    type: sum
    sql: ${discount_amount} ;;
  }

  dimension: discount_percent {
    type: number
    sql: ${TABLE}.DISCOUNT_PERCENT ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.DURATION ;;
  }

  dimension_group: effective_end {
    type: time
    label: "Revenue End"
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
    label: "Revenue Start"
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

  dimension: error_message {
    type: string
    sql: ${TABLE}.ERROR_MESSAGE ;;
  }

  dimension: error_stage {
    type: string
    sql: ${TABLE}.ERROR_STAGE ;;
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

  dimension: fair_value {
    type: number
    sql: ${TABLE}.FAIR_VALUE ;;
  }

  dimension: from_revenue_contract {
    type: string
    sql: ${TABLE}.FROM_REVENUE_CONTRACT ;;
  }

  dimension: func_currency_precision {
    type: number
    sql: ${TABLE}.FUNC_CURRENCY_PRECISION ;;
  }

  dimension: functional_currency {
    type: string
    sql: ${TABLE}.FUNCTIONAL_CURRENCY ;;
  }

  dimension: functional_exchange_rate {
    type: number
    sql: ${TABLE}.FUNCTIONAL_EXCHANGE_RATE ;;
  }

  dimension: future_sch_carve_revenue {
    type: number
    sql: ${TABLE}.FUTURE_SCH_CARVE_REVENUE ;;
  }

  dimension: future_sch_revenue {
    type: number
    sql: ${TABLE}.FUTURE_SCH_REVENUE ;;
  }

  dimension: global_currency {
    type: string
    sql: ${TABLE}.GLOBAL_CURRENCY ;;
  }

  dimension: global_currency_precision {
    type: number
    sql: ${TABLE}.GLOBAL_CURRENCY_PRECISION ;;
  }

  dimension: global_exchange_rate {
    type: number
    sql: ${TABLE}.GLOBAL_EXCHANGE_RATE ;;
  }

  dimension: grouping_info {
    type: string
    sql: ${TABLE}.GROUPING_INFO ;;
  }

  dimension: grouping_level {
    type: string
    sql: ${TABLE}.GROUPING_LEVEL ;;
  }

  dimension: grouping_value {
    type: string
    sql: ${TABLE}.GROUPING_VALUE ;;
  }

  dimension: impairment_acct_segment {
    type: string
    sql: ${TABLE}.IMPAIRMENT_ACCT_SEGMENT ;;
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}.ITEM_DESCRIPTION ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.ITEM_ID ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.ITEM_NAME ;;
  }

  dimension: last_update_accounting_period {
    type: string
    sql: ${TABLE}.LAST_UPDATE_ACCOUNTING_PERIOD ;;
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

  dimension: ledger_id {
    type: number
    sql: ${TABLE}.LEDGER_ID ;;
  }

  dimension: ledger_name {
    type: string
    sql: ${TABLE}.LEDGER_NAME ;;
  }

  dimension: legal_entity_id {
    type: number
    sql: ${TABLE}.LEGAL_ENTITY_ID ;;
  }

  dimension: line_number {
    type: string
    sql: ${TABLE}.LINE_NUMBER ;;
  }

  dimension: list_price {
    type: number
    sql: ${TABLE}.LIST_PRICE ;;
  }

  dimension: manual_action_flag {
    type: string
    sql: ${TABLE}.MANUAL_ACTION_FLAG ;;
  }

  dimension_group: max_billing_to {
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
    sql: ${TABLE}.MAX_BILLING_TO ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension_group: order_line_end {
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
    sql: ${TABLE}.ORDER_LINE_END_DATE ;;
  }

  dimension_group: order_line_start {
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
    sql: ${TABLE}.ORDER_LINE_START_DATE ;;
  }

  dimension: order_line_status {
    type: string
    sql: ${TABLE}.ORDER_LINE_STATUS ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: orig_header_id {
    type: number
    sql: ${TABLE}.ORIG_HEADER_ID ;;
  }

  dimension: orig_line_id {
    type: number
    sql: ${TABLE}.ORIG_LINE_ID ;;
  }

  dimension: orig_line_number {
    type: string
    sql: ${TABLE}.ORIG_LINE_NUMBER ;;
  }

  dimension: orig_order_number {
    type: string
    sql: ${TABLE}.ORIG_ORDER_NUMBER ;;
  }

  dimension: overwrite_ssp {
    type: string
    sql: ${TABLE}.OVERWRITE_SSP ;;
  }

  dimension: parent_rev_header_id {
    type: number
    sql: ${TABLE}.PARENT_REV_HEADER_ID ;;
  }

  dimension: pob_attributes {
    type: string
    sql: ${TABLE}.POB_ATTRIBUTES ;;
  }

  dimension: pob_exchange_rate_basis {
    type: string
    sql: ${TABLE}.POB_EXCHANGE_RATE_BASIS ;;
  }

  dimension: pob_rel_method {
    type: string
    sql: ${TABLE}.POB_REL_METHOD ;;
  }

  dimension: pob_rule_id {
    type: number
    sql: ${TABLE}.POB_RULE_ID ;;
  }

  dimension: pob_rule_name {
    type: string
    sql: ${TABLE}.POB_RULE_NAME ;;
  }

  dimension: pob_sch_type {
    type: string
    sql: ${TABLE}.POB_SCH_TYPE ;;
  }

  dimension: pob_type {
    type: string
    sql: ${TABLE}.POB_TYPE ;;
  }

  dimension: pob_version {
    type: number
    sql: ${TABLE}.POB_VERSION ;;
  }

  dimension: prev_cumulative_net_revenue {
    type: number
    sql: ${TABLE}.PREV_CUMULATIVE_NET_REVENUE ;;
  }

  measure: sum_prev_cumulative_net_revenue {
    type: sum
    sql: ${prev_cumulative_net_revenue} ;;
  }

  dimension: prev_current_net_revenue {
    type: number
    sql: ${TABLE}.PREV_CURRENT_NET_REVENUE ;;
  }

  measure: sum_prev_current_net_revenue {
    type: sum
    sql: ${prev_current_net_revenue} ;;
  }

  dimension: prev_revenue_amount {
    type: number
    sql: ${TABLE}.PREV_REVENUE_AMOUNT ;;
  }

  measure: sum_prev_revenue_amount {
    type: sum
    sql: ${prev_revenue_amount} ;;
  }

  dimension: prior_net_revenue {
    type: number
    sql: ${TABLE}.PRIOR_NET_REVENUE ;;
  }

  measure: sum_prior_net_revenue {
    type: sum
    sql: ${prior_net_revenue} ;;
  }

  dimension: prior_rem_carve_amt {
    type: number
    sql: ${TABLE}.PRIOR_REM_CARVE_AMT ;;
  }

  dimension: prior_rem_contractual_rev_amt {
    type: number
    sql: ${TABLE}.PRIOR_REM_CONTRACTUAL_REV_AMT ;;
  }


  dimension: prior_ssp_price {
    type: number
    sql: ${TABLE}.PRIOR_SSP_PRICE ;;
  }

  dimension: product_group {
    type: string
    sql: ${TABLE}.PRODUCT_GROUP ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.QUANTITY ;;
  }

  measure: sum_quantity {
    type: sum
    sql: ${quantity} ;;
  }


  dimension: reclass_eligible {
    type: string
    sql: ${TABLE}.RECLASS_ELIGIBLE ;;
  }

  dimension: recognition_status {
    type: string
    sql: ${TABLE}.RECOGNITION_STATUS ;;
  }

  dimension: released_carve_rev {
    type: number
    sql: ${TABLE}.RELEASED_CARVE_REV ;;
  }

  dimension: released_contractual_rev {
    type: number
    sql: ${TABLE}.RELEASED_CONTRACTUAL_REV ;;
  }

  dimension: remaining_list_price {
    type: number
    sql: ${TABLE}.REMAINING_LIST_PRICE ;;
  }

  dimension: request_id {
    type: number
    sql: ${TABLE}.REQUEST_ID ;;
  }

  dimension: rev_alloc_refresh {
    type: string
    sql: ${TABLE}.REV_ALLOC_REFRESH ;;
  }

  dimension: rev_header_id {
    type: number
    sql: ${TABLE}.REV_HEADER_ID ;;
  }

  dimension: rev_contract_number {
    type: string
    sql: ${TABLE}.REV_CONTARCT_NUMBER ;;
    html:
    <a href="https://demo2.recvue.com/pages/rev/WorkbenchPG.xhtml?tab=0&rev_contarct_number={{rev_header_id}}" target="_blank">{{rev_contract_number}}</a>;;
   }

  dimension: rev_contract_version {
    type: number
    sql: ${TABLE}.REV_CONTRACT_VERSION ;;
  }

  dimension: rev_line_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.REV_LINE_ID ;;
  }

  dimension: rev_line_type {
    type: string
    sql: ${TABLE}.REV_LINE_TYPE ;;
  }

  dimension: rev_line_version {
    type: number
    sql: ${TABLE}.REV_LINE_VERSION ;;
  }

  dimension: rev_prod_classification {
    type: string
    sql: ${TABLE}.REV_PROD_CLASSIFICATION ;;
  }

  dimension: rev_release_amount {
    type: number
    sql: ${TABLE}.REV_RELEASE_AMOUNT ;;
  }

  measure: sum_rev_release_amount {
    type: sum
    sql: ${rev_release_amount} ;;
  }

  dimension: rev_release_percent {
    type: number
    sql: ${TABLE}.REV_RELEASE_PERCENT ;;
  }

  dimension: rev_release_quantity {
    type: number
    sql: ${TABLE}.REV_RELEASE_QUANTITY ;;
  }

  measure: sum_rev_release_quantity {
    type: sum
    sql: ${rev_release_quantity} ;;
  }

  dimension: rev_sch_type {
    type: string
    sql: ${TABLE}.REV_SCH_TYPE ;;
  }

  dimension: rev_term_id {
    type: number
    sql: ${TABLE}.REV_TERM_ID ;;
  }

  dimension: rev_unrelease_net_revenue {
    type: number
    sql: ${TABLE}.REV_UNRELEASE_NET_REVENUE ;;
  }

  dimension: rev_unrelease_quantity {
    type: number
    sql: ${TABLE}.REV_UNRELEASE_QUANTITY ;;
  }

  dimension: rev_unrelease_revenue {
    type: number
    sql: ${TABLE}.REV_UNRELEASE_REVENUE ;;
  }

  dimension: revenue_amount {
    label: "Booked Value"
    type: number
    sql: ${TABLE}.REVENUE_AMOUNT ;;
  }

  measure: sum_rev_unrelease_quantity {
    type: sum
    sql: ${rev_unrelease_quantity} ;;
  }

  measure: sum_rev_unrelease_revenue {
    type: sum
    sql: ${rev_unrelease_revenue} ;;
  }

  dimension: revenue_recognized_to_date {
    type: number
    sql: ${TABLE}.REVENUE_RECOGNIZED_TO_DATE ;;
  }

  dimension: revenue_segment {
    type: string
    sql: ${TABLE}.REVENUE_SEGMENT ;;
  }

  dimension: revenue_treatment {
    type: string
    sql: ${TABLE}.REVENUE_TREATMENT ;;
  }

  dimension: sellprice_within_ssp_range {
    type: string
    sql: ${TABLE}.SELLPRICE_WITHIN_SSP_RANGE ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }

  dimension: ssp_above_midpoint_percent {
    type: number
    sql: ${TABLE}.SSP_ABOVE_MIDPOINT_PERCENT ;;
  }

  dimension: ssp_above_midpoint_price {
    type: number
    sql: ${TABLE}.SSP_ABOVE_MIDPOINT_PRICE ;;
  }

  dimension: ssp_attributes {
    type: string
    sql: ${TABLE}.SSP_ATTRIBUTES ;;
  }

  dimension: ssp_below_midpoint_percent {
    type: number
    sql: ${TABLE}.SSP_BELOW_MIDPOINT_PERCENT ;;
  }

  dimension: ssp_below_midpoint_price {
    type: number
    sql: ${TABLE}.SSP_BELOW_MIDPOINT_PRICE ;;
  }

  dimension_group: ssp {
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
    sql: ${TABLE}.SSP_DATE ;;
  }

  dimension: ssp_eligible {
    type: string
    sql: ${TABLE}.SSP_ELIGIBLE ;;
  }

  dimension: ssp_group_id {
    type: number
    sql: ${TABLE}.SSP_GROUP_ID ;;
  }

  dimension: ssp_group_name {
    type: string
    sql: ${TABLE}.SSP_GROUP_NAME ;;
  }

  dimension: ssp_line_id {
    type: number
    sql: ${TABLE}.SSP_LINE_ID ;;
  }

  dimension: ssp_line_version {
    type: number
    sql: ${TABLE}.SSP_LINE_VERSION ;;
  }

  dimension: ssp_midpoint_percent {
    type: number
    sql: ${TABLE}.SSP_MIDPOINT_PERCENT ;;
  }

  dimension: ssp_midpoint_price {
    type: number
    sql: ${TABLE}.SSP_MIDPOINT_PRICE ;;
  }

  dimension: ssp_rule_id {
    type: number
    sql: ${TABLE}.SSP_RULE_ID ;;
  }

  dimension: ssp_rule_name {
    type: string
    sql: ${TABLE}.SSP_RULE_NAME ;;
  }

  dimension: ssp_term {
    type: number
    sql: ${TABLE}.SSP_TERM ;;
  }

  dimension: ssp_type {
    type: string
    sql: ${TABLE}.SSP_TYPE ;;
  }

  dimension: ssp_value {
    type: number
    sql: ${TABLE}.SSP_VALUE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
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

  dimension: total_billed_amount {
    type: number
    sql: ${TABLE}.TOTAL_BILLED_AMOUNT ;;
  }

  measure: sum_total_billed_amount {
    type: sum
    sql: ${total_billed_amount} ;;
  }

  dimension: total_list_price {
    type: number
    sql: ${TABLE}.TOTAL_LIST_PRICE ;;
  }

  dimension: total_sell_price {
    type: number
    sql: ${TABLE}.TOTAL_SELL_PRICE ;;
  }

  dimension: total_unbilled_amount {
    type: number
    sql: ${TABLE}.TOTAL_UNBILLED_AMOUNT ;;
  }

  measure: sum_total_unbilled_amount {
    type: sum
    sql: ${total_unbilled_amount} ;;
  }


  dimension: tran_currency_precision {
    type: number
    sql: ${TABLE}.TRAN_CURRENCY_PRECISION ;;
  }

  dimension: transaction_currency {
    type: string
    sql: ${TABLE}.TRANSACTION_CURRENCY ;;
  }

  dimension: ubr_segment {
    type: string
    sql: ${TABLE}.UBR_SEGMENT ;;
  }

  dimension: unconditional_rightforpayment {
    type: string
    sql: ${TABLE}.UNCONDITIONAL_RIGHTFORPAYMENT ;;
  }

  dimension: unit_list_price {
    type: number
    sql: ${TABLE}.UNIT_LIST_PRICE ;;
  }

  dimension: unit_sell_price {
    type: number
    sql: ${TABLE}.UNIT_SELL_PRICE ;;
  }

  dimension: unreleased_carve_rev {
    type: number
    sql: ${TABLE}.UNRELEASED_CARVE_REV ;;
  }

  dimension: unreleased_contractual_rev {
    type: number
    sql: ${TABLE}.UNRELEASED_CONTRACTUAL_REV ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.UOM ;;
  }

  measure: total_revenue_amount {
    type: sum
    sql:  ${revenue_amount} ;;
    drill_fields: [detail*]
  }

  measure: rev_line_id_count {
    type: count_distinct
    sql: ${rev_line_id} ;;
    drill_fields: [detail*]
  }


  measure: attribute1_n_M {
    label: "Contract Liability Balance"
    type: sum
    sql:  ${attribute1_n} ;;
    drill_fields: [detail*]
  }

  measure: attribute2_n_M {
    label: "Contract Asset Balance"
    type: sum
    sql:  ${attribute2_n} ;;
    drill_fields: [detail*]
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------

  set: detail {
    fields: [
      order_header_all.order_number,
      order_header_all.order_type,
      order_header_all.effective_start_date,
      order_header_all.effective_end_date,
      order_lines_all.line_type,
      rev_lines_all.rev_contract_number,
      rev_lines_all.bill_to_customer_name,
      rev_lines_all.item_name,
      rev_lines_all.ledger_name,
      rev_lines_all.ssp_rule_name,
      rev_lines_all.pob_rule_name,
      rev_lines_all.revenue_amount,
      rev_schedules_all.bill_sch_amt,
      rev_schedules_all.bill_unsch_amount
    ]
  }

   set: pobdtl {
    fields: [
            order_header_all.order_number,
      order_lines_all.line_number,
      order_header_all.booked_date,
      order_header_all.effective_start_date,
      order_header_all.effective_end_date,
      rev_schedules_all.quantity,
      rev_lines_all.revenue_amount,
      rev_schedules_all.gl_date,
      rev_lines_all.bill_to_customer_name,
      rev_lines_all.rev_contract_number,
      rev_lines_all.item_name,
      rev_lines_all.pob_type,
      rev_lines_all.pob_sch_type,
      rev_lines_all.pob_rel_method,
      rev_lines_all.pob_rule_name,
      rev_lines_all.ledger_name,
      rev_lines_all.transaction_currency,
      rev_lines_all.functional_currency,
      rev_lines_all.cumulative_net_revenue,
      rev_schedules_all.revenue_amount,
      rev_schedules_all.unscheduled_revenue,
      rev_def_schedules_all.Unbilled_Revenue,
      rev_def_schedules_all.invoice_amount
    ]
  }

}
