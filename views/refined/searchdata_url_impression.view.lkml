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
    hidden: no
  }

  dimension_group: data {
    hidden: no
  }

  dimension: device {
    group_label: "Search Description"
    hidden: no
  }

  dimension: is_action {
    group_label: "Search enrichment"
    hidden: no
  }

  dimension: is_amp_blue_link {
    group_label: "Search enrichment"
    hidden: no
  }

  dimension: is_amp_top_stories {
    group_label: "Search enrichment"
    hidden: no
  }

  dimension: is_anonymized_discover {
    group_label: "Search enrichment"
    hidden: no
  }

  dimension: is_anonymized_query {
    group_label: "Query"
    hidden: no
  }

  dimension: is_job_details {
    group_label: "Search enrichment"
    hidden: no
  }

  dimension: is_job_listing {
    group_label: "Search enrichment"
    hidden: no
  }

  dimension: is_tpf_faq {
    group_label: "Search enrichment"
    hidden: no
  }

  dimension: is_tpf_howto {
    group_label: "Search enrichment"
    hidden: no
  }

  dimension: is_tpf_qa {
    group_label: "Search enrichment"
    hidden: no
  }

  dimension: is_weblite {
    group_label: "Search enrichment"
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

  dimension: url {
    hidden: no
  }

  dimension: clicks {
    group_label: "Metrics"
    hidden: no
  }

  dimension: impressions {
    group_label: "Metrics"
    hidden: no
  }

  dimension: sum_position {
    group_label: "Metrics"
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

  measure: ctr {
    label: "CTR"
    type: number
    sql: SAFE_DIVIDE(${total_clicks},${total_impressions}) ;;
    hidden: no
    value_format_name: percent_1
    #1cc240
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
    value_format_name: decimal_3
    hidden: no
  }
}
