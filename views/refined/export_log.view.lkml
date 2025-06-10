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
}
