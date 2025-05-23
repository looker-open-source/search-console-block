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
    type: number
    sql: ${TABLE}.clicks ;;
    hidden: no
  }

  dimension: country {
    group_label: "Search Description"
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

  dimension: device {
    group_label: "Search Description"
    type: string
    sql: ${TABLE}.device ;;
    hidden: no
  }

  dimension: impressions {
    group_label: "Metrics"
    type: number
    sql: ${TABLE}.impressions ;;
    hidden: no
  }

  dimension: is_anonymized_query {
    group_label: "Query"
    type: yesno
    sql: ${TABLE}.is_anonymized_query ;;
    hidden: no
  }

  dimension: query {
    group_label: "Query"
    type: string
    sql: ${TABLE}.query ;;
    hidden: no
  }

  dimension: search_type {
    group_label: "Search Description"
    type: string
    sql: ${TABLE}.search_type ;;
    hidden: no
  }

  dimension: site_url {
    type: string
    sql: ${TABLE}.site_url ;;
    hidden: no
  }

  dimension: sum_top_position {
    group_label: "Metrics"
    type: number
    sql: ${TABLE}.sum_top_position ;;
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
