include: "../raw/**.view.lkml"

view: +export_log {
  derived_table: {
    sql: SELECT *, GENERATE_UUID() as primary_key  FROM  `@{PROJECT_ID}.@{SC_SCHEMA}.ExportLog` ;;
  }

  dimension: pk {
    sql: ${TABLE}.primary_key ;;
    primary_key: yes
  }

  dimension: agenda {
    type: string
    sql: ${TABLE}.agenda ;;
    hidden: no
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: data {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data_date ;;
    hidden: no
  }

  dimension: epoch_version {
    type: number
    sql: ${TABLE}.epoch_version ;;
    hidden: no
  }

  dimension: namespace {
    type: string
    sql: ${TABLE}.namespace ;;
    hidden: no
  }

  dimension_group: publish {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.publish_time ;;
    hidden: no
  }
  measure: count {
    type: count
  }
}
