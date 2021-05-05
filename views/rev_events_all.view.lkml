view: rev_events_all {
  sql_table_name: ADORB.REV_EVENTS_ALL ;;

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

  dimension: error_message {
    type: string
    sql: ${TABLE}.ERROR_MESSAGE ;;
  }

  dimension: event_action_id {
    type: number
    sql: ${TABLE}.EVENT_ACTION_ID ;;
  }

  dimension: event_applied_on {
    type: string
    sql: ${TABLE}.EVENT_APPLIED_ON ;;
  }

  dimension_group: event_effective {
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
    sql: ${TABLE}.EVENT_EFFECTIVE_DATE ;;
  }

  dimension_group: event_end {
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
    sql: ${TABLE}.EVENT_END_DATE ;;
  }

  dimension: event_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.EVENT_ID ;;
  }

  dimension_group: event_start {
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
    sql: ${TABLE}.EVENT_START_DATE ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.EVENT_TYPE ;;
  }

  dimension: event_value {
    type: string
    sql: ${TABLE}.EVENT_VALUE ;;
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

  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.ORG_ID ;;
  }

  dimension: processed_value {
    type: number
    sql: ${TABLE}.PROCESSED_VALUE ;;
  }

  dimension: request_id {
    type: number
    sql: ${TABLE}.REQUEST_ID ;;
  }

  dimension: retain_type {
    type: string
    sql: ${TABLE}.RETAIN_TYPE ;;
  }

  dimension: rev_event_status {
    type: string
    sql: ${TABLE}.REV_EVENT_STATUS ;;
  }

  dimension: rev_events_seq {
    type: number
    sql: ${TABLE}.REV_EVENTS_SEQ ;;
  }

  dimension: rev_header_id {
    type: number
    sql: ${TABLE}.REV_HEADER_ID ;;
  }

  dimension: rev_line_id {
    type: number
    sql: ${TABLE}.REV_LINE_ID ;;
  }

  dimension: tenant_id {
    type: number
    sql: ${TABLE}.TENANT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
