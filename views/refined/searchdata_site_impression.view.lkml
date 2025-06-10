include: "../raw/**.view.lkml"

view: +searchdata_site_impression {

  label: "Site Impression"

  derived_table: {
    sql: SELECT *, GENERATE_UUID() as primary_key  FROM  `@{PROJECT_ID}.@{SC_SCHEMA}.searchdata_site_impression` ;;
  }

  dimension: pk {
    sql: ${TABLE}.primary_key ;;
    primary_key: yes
  }

  dimension: clicks {
    group_label: "Metrics"
    hidden: no
  }

  dimension: country {
    group_label: "Search Description"
    hidden: no
  }

  dimension: country_upper {
    type: string
    map_layer_name: countries
    sql: UPPER(${TABLE}.country) ;;
    group_label: "Search Description"
    hidden: no
  }

  dimension_group: data {
    hidden: no
  }

  dimension: device {
    group_label: "Search Description"
    hidden: no
  }

  dimension: impressions {
    group_label: "Metrics"
    hidden: no
  }

  dimension: is_anonymized_query {
    group_label: "Query"
    hidden: no
  }

  dimension: query {
    group_label: "Query"
    hidden: no
  }

  dimension: search_type {
    group_label: "Search Description"
    hidden: no
  }

  dimension: site_url {
    hidden: no
  }

  dimension: sum_top_position {
    group_label: "Metrics"
    hidden: no
  }

  ## MEASURES ##

  measure: total_clicks {
    label: "Clcks"
    type: sum
    sql: ${clicks} ;;
    hidden: no
    #E52592
  }

  measure: total_impressions {
    label: "Impressions"
    type: sum
    sql: ${impressions} ;;
    hidden: no
    #1A73E8
  }

  measure: ctr {
    label: "CTR"
    type: number
    sql: SAFE_DIVIDE(${total_clicks},${total_impressions}) ;;
    hidden: no
    value_format_name: percent_1
    #1cc240
  }

  measure: total_sum_top_position {
    type: sum
    sql: ${sum_top_position} ;;
  }

  measure: avg_site_position {
    label: "Average Site Position"
    type: number
    sql: SAFE_DIVIDE(${total_sum_top_position}, ${total_impressions}) + 1 ;;
    value_format_name: decimal_3
    hidden: no
    #db1e3b
  }
}
