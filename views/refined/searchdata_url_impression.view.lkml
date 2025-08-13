include: "../raw/**.view.lkml"

view: +searchdata_url_impression {

  label: "URL Impression"

  derived_table: {
    sql:

    WITH search_url_impression AS ( SELECT *, GENERATE_UUID() as primary_key

    FROM  `@{PROJECT_ID}.@{SC_SCHEMA}.searchdata_url_impression` ),

    max_date AS (
      SELECT MAX(data_date) AS max_date
      FROM  `@{PROJECT_ID}.@{SC_SCHEMA}.searchdata_url_impression`
    )
    SELECT * FROM search_url_impression CROSS JOIN max_date

    ;;
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
    timeframes: [week, month, date, year]
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
    html:  <p style="font-size: 14px;"><a href="{{ url._value }}" target="_blank" style="text-decoration: none;">{{ url._value}}</a></p> ;;
  }

  dimension: sub_page {
    type: string
    hidden: no
    sql: REGEXP_EXTRACT(${TABLE}.url, r'https?://[^/]+/(.*)') ;;
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
    sql: SAFE_DIVIDE(${top_position}, ${total_impressions}) + 1 ;;
    value_format_name: decimal_3
    hidden: no
  }

  ##### PERIOD OVER PERIOD #######

  filter: date_filter {
    view_label: "_PoP"
    hidden: no
    description: "Use this date filter in combination with the timeframes dimension for dynamic date filtering"
    type: date
  }

  dimension_group: filter_start_date {
    hidden: yes
    type: time
    timeframes: [raw,date]
    #You can replace the '2013-01-01' with the first date in your database
    sql: CASE WHEN {% date_start date_filter %} IS NULL THEN '2013-01-01' ELSE DATE_ADD(${filter_end_date_raw}, INTERVAL- ${interval} DAY) END;;
  }


  dimension: interval {
    hidden: yes
    type: number
    sql: DATE_DIFF({% date_end date_filter %}, {% date_start date_filter %}, DAY) ;;
  }

  dimension: max_date {
    hidden: yes
    type: date
    sql: ${TABLE}.max_date ;;
  }

  dimension_group: filter_end_date {
    hidden: yes
    type: time
    timeframes: [raw,date]
    sql: CASE WHEN {% date_end date_filter %} IS NULL THEN CURRENT_DATE  ELSE CAST(${max_date} AS DATE) END;;
  }

#start date of the previous period

  dimension: previous_start_date {
    hidden: yes
    type: string
    sql: DATE_ADD(${filter_start_date_raw}, INTERVAL- ${interval} DAY);;
  }

  dimension: timeframes {
    hidden: no
    view_label: "_PoP"
    type: string
    case: {
      when: {
        sql: ${is_current_period} = true;;
        label: "Selected Period"
      }
      when: {
        sql: ${is_previous_period} = true;;
        label: "Previous Period"
      }
      else: "Not in time period"
    }
  }

## For filtered measures


  dimension: is_current_period {
    hidden: yes
    type: yesno
    sql: ${data_date} > ${filter_start_date_date} AND ${data_date} <= ${filter_end_date_date} ;;
  }

  dimension: is_previous_period {
    hidden: yes
    type: yesno
    sql: ${data_date} > ${previous_start_date} AND ${data_date} <= ${filter_start_date_date} ;;
  }

  measure: selected_period_clicks {
    view_label: "_PoP"
    label: "Clicks"
    hidden: no
    type: sum
    sql: ${clicks} ;;
    filters: [is_current_period: "yes"]
    value_format_name: decimal_0
  }
  measure: previous_period_clicks {
    view_label: "_PoP"
    label: "Clicks previous period"
    hidden: no
    type: sum
    sql: ${clicks} ;;
    filters: [is_previous_period: "yes"]
    value_format_name: decimal_0
  }

  measure: selected_period_impressions{
    view_label: "_PoP"
    label: "Impressions"
    hidden: no
    type: sum
    sql: ${impressions} ;;
    filters: [is_current_period: "yes"]
    value_format_name: decimal_0
  }
  measure: previous_period_impressions {
    label: "Impressions previous period"
    view_label: "_PoP"
    hidden: no
    type: sum
    sql: ${impressions} ;;
    filters: [is_previous_period: "yes"]
    value_format_name: decimal_0
  }

  measure: clicks_change{
    label: "% Clicks Change"
    view_label: "_PoP"
    hidden: no
    value_format_name: percent_2
    type: number
    sql:SAFE_DIVIDE(${selected_period_clicks} - ${previous_period_clicks} , ${previous_period_clicks}) ;;
  }

  measure: impressions_change{
    view_label: "_PoP"
    label: "% Impressions Change"
    hidden: no
    value_format_name: percent_2
    type: number
    sql:SAFE_DIVIDE(${selected_period_impressions} - ${previous_period_impressions} , ${previous_period_impressions}) ;;
  }

  measure: clicks_change_c{
    label: "Clicks Change"
    view_label: "_PoP"
    hidden: no
    value_format_name: decimal_0
    type: number
    sql: ${selected_period_clicks} - ${previous_period_clicks} ;;
  }

  measure: impressions_change_c{
    view_label: "_PoP"
    label: "Impressions Change"
    hidden: no
    value_format_name: decimal_0
    type: number
    sql:${selected_period_impressions} - ${previous_period_impressions} ;;
  }

  measure: clicks_string {
    type: string
    hidden: no
    sql: CONCAT(ROUND(ABS(${clicks_change})*100, 2), "%") ;;
    label: "Clicks String"
    html:
      {% if clicks_change > 0 %}
        <span style="color: green; font-weight: bold;">↑ </span><span style="color: black; font-size:12px"> {{ value }}&nbsp;&nbsp;&nbsp; </span> <span style="color: black; font-weight: bold;"> {{ selected_period_clicks }}</span>
      {% elsif clicks_change < 0 %}
        <span style="color: red; font-weight: bold;">↓ </span><span style="color: black; font-size:12px">{{ value }}&nbsp;&nbsp;&nbsp; </span> <span style="color: black; font-weight: bold;"> {{ selected_period_clicks }}</span>
      {% else %}
        <span style="color: black; font-size:12px">{{ value }} &nbsp;&nbsp;&nbsp; </span> <span style="color: black; font-weight: bold;"> {{ selected_period_clicks }}</span>
      {% endif %};;
  }

  measure: clicks_string_change {
    type: string
    hidden: no
    sql: COALESCE(CONCAT(ROUND(ABS(${clicks_change})*100, 2), "%"),"none") ;;
    label: "Clicks String Change"
    html:

      {% if clicks_change > 0 %}
        <span style="color: green; font-weight: bold;">↑ </span><span style="color: black; font-size:12px"> {{ value }}&nbsp;&nbsp;&nbsp; + </span> <span style="color: black; font-weight: bold;"> {{ clicks_change_c }}</span>
      {% elsif clicks_change < 0 %}
        <span style="color: red; font-weight: bold;">↓ </span><span style="color: black; font-size:12px">{{ value }}&nbsp;&nbsp;&nbsp; </span> <span style="color: black; font-weight: bold;"> {{ clicks_change_c }}</span>
      {% else %}
        <span style="color: black; font-size:12px">Previously 0 &nbsp;&nbsp;&nbsp; </span> <span style="color: black; font-weight: bold;"> {{ clicks_change_c }}</span>
      {% endif %};;
  }


  dimension: ytd_only {hidden:yes}
  dimension: mtd_only {hidden:yes}
  dimension: wtd_only {hidden:yes}

}
