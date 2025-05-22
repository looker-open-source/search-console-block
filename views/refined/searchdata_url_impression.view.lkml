include: "../raw/**.view.lkml"

view: +searchdata_url_impression {

  label: "URL Impression"

  derived_table: {
    sql: SELECT *, GENERATE_UUID() as primary_key  FROM  `@{PROJECT_ID}.@{SC_SCHEMA}.searchdata_url_impression` ;;
  }

  dimension: pk {
    sql: ${TABLE}.primary_key ;;
    primary_key: yes
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

  dimension: is_action {
    group_label: "Search enrichment"
    type: yesno
    sql: ${TABLE}.is_action ;;
    hidden: no
  }

  dimension: is_amp_blue_link {
    group_label: "Search enrichment"
    type: yesno
    sql: ${TABLE}.is_amp_blue_link ;;
    hidden: no
  }

  dimension: is_amp_top_stories {
    group_label: "Search enrichment"
    type: yesno
    sql: ${TABLE}.is_amp_top_stories ;;
    hidden: no
  }

  dimension: is_anonymized_discover {
    group_label: "Search enrichment"
    type: yesno
    sql: ${TABLE}.is_anonymized_discover ;;
    hidden: no
  }

  dimension: is_anonymized_query {
    group_label: "Query"
    type: yesno
    sql: ${TABLE}.is_anonymized_query ;;
    hidden: no
  }

  dimension: is_job_details {
    group_label: "Search enrichment"
    type: yesno
    sql: ${TABLE}.is_job_details ;;
    hidden: no
  }

  dimension: is_job_listing {
    group_label: "Search enrichment"
    type: yesno
    sql: ${TABLE}.is_job_listing ;;
    hidden: no
  }

  dimension: is_tpf_faq {
    group_label: "Search enrichment"
    type: yesno
    sql: ${TABLE}.is_tpf_faq ;;
    hidden: no
  }

  dimension: is_tpf_howto {
    group_label: "Search enrichment"
    type: yesno
    sql: ${TABLE}.is_tpf_howto ;;
    hidden: no
  }

  dimension: is_tpf_qa {
    group_label: "Search enrichment"
    type: yesno
    sql: ${TABLE}.is_tpf_qa ;;
    hidden: no
  }

  dimension: is_weblite {
    group_label: "Search enrichment"
    type: yesno
    sql: ${TABLE}.is_weblite ;;
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

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
    hidden: no
  }

  dimension: clicks {
    group_label: "Metrics"
    type: number
    sql: ${TABLE}.clicks ;;
    hidden: no
  }

  dimension: impressions {
    group_label: "Metrics"
    type: number
    sql: ${TABLE}.impressions ;;
    hidden: no
  }

  dimension: sum_position {
    group_label: "Metrics"
    type: number
    sql: ${TABLE}.sum_position ;;
    hidden: no
  }

  ## MEASURES ##

  measure: total_clicks {
    label: "Clcks"
    type: sum
    sql: ${clicks} ;;
    hidden: no
  }

  measure: total_impressions {
    label: "Impressions"
    type: sum
    sql: ${impressions} ;;
    hidden: no
  }

  measure: top_position {
    label: "Top Position"
    type: sum
    sql: ${sum_position} ;;
  }

  measure: avg_url_position {
    label: "Average URL Position"
    type: number
    sql: SAVE_DIVIDE(${top_position}, ${total_impressions}) + 1 ;;
    value_format_name: decimal_1
    hidden: no
  }
}
