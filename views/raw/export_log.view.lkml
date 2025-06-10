# The name of this view in Looker is "Export Log"
view: export_log {

  fields_hidden_by_default: yes

  dimension: agenda {
    type: string
    sql: ${TABLE}.agenda ;;
  }

  dimension_group: data {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data_date ;;
  }

  dimension: epoch_version {
    type: number
    sql: ${TABLE}.epoch_version ;;
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
  }

  dimension_group: publish {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.publish_time ;;
  }
  measure: count {
    type: count
  }
}
