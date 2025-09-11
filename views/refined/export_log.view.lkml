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
    hidden: no
  }

  dimension_group: data {
    hidden: no
  }

  dimension: epoch_version {
    hidden: no
  }

  dimension: namespace {
    hidden: no
  }

  dimension_group: publish {
    hidden: no
  }

  measure: max_data_date {
    type: max
    sql: ${data_date} ;;
  }

  measure: max_publish_date {
    type: max
    sql: ${publish_date} ;;
  }
  dimension: data_info {
    hidden: no
    type: string
    sql: "" ;;
    html: <p style="font-size:16px"> Last updated: &nbsp;&nbsp; {{ max_data_date | date: "%b %e %a" }} <br/> Last reviewed: &nbsp;&nbsp; {{ max_publish_date | date: "%b %e %a" }}</p> ;;
  }
}
