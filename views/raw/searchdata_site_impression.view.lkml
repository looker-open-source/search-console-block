# The name of this view in Looker is "Searchdata Site Impression"
view: searchdata_site_impression {

  fields_hidden_by_default: yes

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

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

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: is_anonymized_query {
    type: yesno
    sql: ${TABLE}.is_anonymized_query ;;
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

  dimension: sum_top_position {
    type: number
    sql: ${TABLE}.sum_top_position ;;
  }
  measure: count {
    type: count
  }
}
