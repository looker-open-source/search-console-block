# The name of this view in Looker is "Searchdata URL Impression"
view: searchdata_url_impression {

  fields_hidden_by_default: yes

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: data {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data_date ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: is_action {
    type: yesno
    sql: ${TABLE}.is_action ;;
  }

  dimension: is_amp_blue_link {
    type: yesno
    sql: ${TABLE}.is_amp_blue_link ;;
  }

  dimension: is_amp_top_stories {
    type: yesno
    sql: ${TABLE}.is_amp_top_stories ;;
  }

  dimension: is_anonymized_discover {
    type: yesno
    sql: ${TABLE}.is_anonymized_discover ;;
  }

  dimension: is_anonymized_query {
    type: yesno
    sql: ${TABLE}.is_anonymized_query ;;
  }

  dimension: is_job_details {
    type: yesno
    sql: ${TABLE}.is_job_details ;;
  }

  dimension: is_job_listing {
    type: yesno
    sql: ${TABLE}.is_job_listing ;;
  }

  dimension: is_tpf_faq {
    type: yesno
    sql: ${TABLE}.is_tpf_faq ;;
  }

  dimension: is_tpf_howto {
    type: yesno
    sql: ${TABLE}.is_tpf_howto ;;
  }

  dimension: is_tpf_qa {
    type: yesno
    sql: ${TABLE}.is_tpf_qa ;;
  }

  dimension: is_weblite {
    type: yesno
    sql: ${TABLE}.is_weblite ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }

  dimension: search_type {
    type: string
    sql: ${TABLE}.search_type ;;
  }

  dimension: site_url {
    type: string
    sql: ${TABLE}.site_url ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: sum_position {
    type: number
    sql: ${TABLE}.sum_position ;;
  }
  measure: count {
    type: count
  }
}
