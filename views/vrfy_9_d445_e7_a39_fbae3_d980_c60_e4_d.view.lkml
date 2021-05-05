view: vrfy_9_d445_e7_a39_fbae3_d980_c60_e4_d {
  sql_table_name: LOOKER.VRFY_9D445E7A39FBAE3D980C60E4D ;;

  dimension: testcol {
    type: number
    sql: ${TABLE}.TESTCOL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
