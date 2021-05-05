view: rev_header_all {
  sql_table_name: ADORB.REV_HEADER_ALL ;;

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

  dimension: attribute6_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE6_V ;;
  }

  dimension: attribute7_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE7_V ;;
  }

  dimension: attribute8_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE8_V ;;
  }

  dimension: attribute9_v {
    type: string
    sql: ${TABLE}.ATTRIBUTE9_V ;;
  }

  dimension: attribute_category {
    type: string
    sql: ${TABLE}.ATTRIBUTE_CATEGORY ;;
  }

  dimension: contract_amount {
    type: number
    sql: ${TABLE}.CONTRACT_AMOUNT ;;
  }

  dimension: contract_status {
    type: string
    sql: ${TABLE}.CONTRACT_STATUS ;;
  }

  dimension: created_acct_period {
    type: string
    sql: ${TABLE}.CREATED_ACCT_PERIOD ;;
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

  dimension: grouping_attribute1 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE1 ;;
  }

  dimension: grouping_attribute10 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE10 ;;
  }

  dimension: grouping_attribute11 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE11 ;;
  }

  dimension: grouping_attribute12 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE12 ;;
  }

  dimension: grouping_attribute13 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE13 ;;
  }

  dimension: grouping_attribute14 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE14 ;;
  }

  dimension: grouping_attribute15 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE15 ;;
  }

  dimension: grouping_attribute16 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE16 ;;
  }

  dimension: grouping_attribute17 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE17 ;;
  }

  dimension: grouping_attribute18 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE18 ;;
  }

  dimension: grouping_attribute19 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE19 ;;
  }

  dimension: grouping_attribute2 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE2 ;;
  }

  dimension: grouping_attribute20 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE20 ;;
  }

  dimension: grouping_attribute21 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE21 ;;
  }

  dimension: grouping_attribute22 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE22 ;;
  }

  dimension: grouping_attribute23 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE23 ;;
  }

  dimension: grouping_attribute24 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE24 ;;
  }

  dimension: grouping_attribute25 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE25 ;;
  }

  dimension: grouping_attribute26 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE26 ;;
  }

  dimension: grouping_attribute27 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE27 ;;
  }

  dimension: grouping_attribute28 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE28 ;;
  }

  dimension: grouping_attribute29 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE29 ;;
  }

  dimension: grouping_attribute3 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE3 ;;
  }

  dimension: grouping_attribute30 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE30 ;;
  }

  dimension: grouping_attribute4 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE4 ;;
  }

  dimension: grouping_attribute5 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE5 ;;
  }

  dimension: grouping_attribute6 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE6 ;;
  }

  dimension: grouping_attribute7 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE7 ;;
  }

  dimension: grouping_attribute8 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE8 ;;
  }

  dimension: grouping_attribute9 {
    type: string
    sql: ${TABLE}.GROUPING_ATTRIBUTE9 ;;
  }

  dimension: grouping_concatenate {
    type: string
    sql: ${TABLE}.GROUPING_CONCATENATE ;;
  }

  dimension: grouping_identifier {
    type: string
    sql: ${TABLE}.GROUPING_IDENTIFIER ;;
  }

  dimension: grouping_rule_id {
    type: number
    sql: ${TABLE}.GROUPING_RULE_ID ;;
  }

  dimension: grouping_value {
    type: string
    sql: ${TABLE}.GROUPING_VALUE ;;
  }

  dimension: grp_rule_name {
    type: string
    sql: ${TABLE}.GRP_RULE_NAME ;;
  }

  dimension: grp_rule_version {
    type: number
    sql: ${TABLE}.GRP_RULE_VERSION ;;
  }

  dimension: last_recognized_period {
    type: string
    sql: ${TABLE}.LAST_RECOGNIZED_PERIOD ;;
  }

  dimension: last_update_acct_period {
    type: string
    sql: ${TABLE}.LAST_UPDATE_ACCT_PERIOD ;;
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

  dimension: legal_entity_name {
    type: string
    sql: ${TABLE}.LEGAL_ENTITY_NAME ;;
  }

  dimension: lowest_common_currency {
    type: string
    sql: ${TABLE}.LOWEST_COMMON_CURRENCY ;;
  }

  dimension: multi_currency {
    type: string
    sql: ${TABLE}.MULTI_CURRENCY ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: projected_revenue {
    type: number
    sql: ${TABLE}.PROJECTED_REVENUE ;;
  }

  dimension: rev_alloc_refresh {
    type: string
    sql: ${TABLE}.REV_ALLOC_REFRESH ;;
  }

  dimension: rev_contarct_number {
    type: string
    sql: ${TABLE}.REV_CONTARCT_NUMBER ;;
  }

  dimension: rev_header_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.REV_HEADER_ID ;;
  }

  dimension: revenue_treatment {
    type: string
    sql: ${TABLE}.REVENUE_TREATMENT ;;
  }

  dimension: ssp_enabled {
    type: string
    sql: ${TABLE}.SSP_ENABLED ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.TENANT_ID ;;
  }

  dimension: total_billed_amount {
    type: number
    sql: ${TABLE}.TOTAL_BILLED_AMOUNT ;;
  }

  dimension: total_recognized_amount {
    type: number
    sql: ${TABLE}.TOTAL_RECOGNIZED_AMOUNT ;;
  }

  dimension: ubr_acct_id {
    type: number
    sql: ${TABLE}.UBR_ACCT_ID ;;
  }

  dimension: uer_acct_id {
    type: number
    sql: ${TABLE}.UER_ACCT_ID ;;
  }

  dimension: unbilled_amount {
    type: number
    sql: ${TABLE}.UNBILLED_AMOUNT ;;
  }

  dimension: unbilled_value {
    type: number
    sql: ${TABLE}.UNBILLED_VALUE ;;
  }

  dimension: unearned_amount {
    type: number
    sql: ${TABLE}.UNEARNED_AMOUNT ;;
  }

  dimension: unreleased_revenue {
    type: number
    sql: ${TABLE}.UNRELEASED_REVENUE ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.VERSION ;;
  }

  measure: count {
    type: count
    drill_fields: [grp_rule_name, legal_entity_name]
  }
}
