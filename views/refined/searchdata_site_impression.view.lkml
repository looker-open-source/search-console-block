include: "../raw/**.view.lkml"

view: +searchdata_site_impression {

  label: "Site Impression"

  derived_table: {
    sql:

    WITH searchdata_site_impression AS ( SELECT *, GENERATE_UUID() as primary_key

    FROM  `@{PROJECT_ID}.@{SC_SCHEMA}.searchdata_site_impression` ),

    max_date AS (
      SELECT MAX(data_date) AS max_date
      FROM  `@{PROJECT_ID}.@{SC_SCHEMA}.searchdata_site_impression`
    )
    SELECT * FROM searchdata_site_impression CROSS JOIN max_date ;;
  }

  dimension: pk {
    sql: ${TABLE}.primary_key ;;
    primary_key: yes
  }

  ## PARAMETERS ##

  parameter: dynamic_metric {
    hidden: no
    type: unquoted
    default_value: "clicks"
    allowed_value: {
      value: "clicks"
      label: "Clicks"
    }
    allowed_value: {
      value: "impressions"
      label: "Impressions"
    }
    allowed_value: {
      value: "ctr"
      label: "CTR"
    }
    allowed_value: {
      value: "avg_site_position"
      label: "Avg Site Position"
    }
  }

  parameter: dynamic_dimension {
    hidden: no
    type: unquoted
    default_value: "queries"
    allowed_value: {
      value: "queries"
      label: "Queries"
    }
    allowed_value: {
      value: "countries"
      label: "Countries"
    }
    allowed_value: {
      value: "devices"
      label: "Devices"
    }
    allowed_value: {
      value: "date"
      label: "Dates"
    }
  }

  measure: dynamic_console_metric{
    # label_from_parameter: dynamic_metric
    type: number
    label: "{% if dynamic_metric._parameter_value == 'clicks' %} Clicks
        {% elsif dynamic_metric._parameter_value == 'impressions' %} Impressions
        {% elsif dynamic_metric._parameter_value == 'ctr' %} CTR
        {% elsif dynamic_metric._parameter_value == 'avg_site_position' %} Avg Site Position
        {% else %} Clicks
      {% endif %}"

    sql:
      {% if dynamic_metric._parameter_value == "clicks" %} ${total_clicks}
        {% elsif dynamic_metric._parameter_value == "impressions" %} ${total_impressions}
        {% elsif dynamic_metric._parameter_value == "ctr" %} ${ctr}
        {% elsif dynamic_metric._parameter_value == "avg_site_position" %} ${avg_site_position}
      {% else %} ${total_clicks}
      {% endif %};;
    hidden: no
  }

  dimension: dynamic_dimension_description {
    type: string
    label: "{% if dynamic_dimension._parameter_value == 'queries' %} Queries
    {% elsif dynamic_dimension._parameter_value == 'countries' %} Countries
    {% elsif dynamic_dimension._parameter_value == 'devices' %} Devices
    {% elsif dynamic_dimension._parameter_value == 'date' %} Dates
    {% else %} Clicks
    {% endif %}"

    sql:
      {% if dynamic_dimension._parameter_value == "queries" %} ${query}
        {% elsif dynamic_dimension._parameter_value == "countries" %} ${country_upper}
        {% elsif dynamic_dimension._parameter_value == "devices" %} ${device}
        {% elsif dynamic_dimension._parameter_value == "date" %} ${data_date}
      {% else %} ${query}
      {% endif %};;
    hidden: no
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
    timeframes: [date, month, year, week]
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
  }

  ## MEASURES ##

  measure: total_clicks {
    label: "Clcks"
    type: sum
    sql: ${clicks} ;;
    hidden: no
    #E52592
  }

  measure: percent_total_clicks {
    type: percent_of_total
    hidden: no
    sql: ${total_clicks} ;;
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
    hidden: no
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

  dimension: nav_bar_site_data {
    hidden:no
    type: string
    sql: " " ;;
    group_label: "Navigation Bar Fields"
    html:
        <div style="border-radius: 5px; padding: 5px 10px; background: #08B248; height: 60px; color: red; text-align: center;">
          <nav style="font-size: 18px;  text-align: center;">
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold;" href="/dashboards/search_console_model::site_data?Data+Date={{ _filters["data_date"] | url_encode }}&Country={{ _filters["country_upper"] | url_encode }}&Device={{ _filters["device"] | url_encode }}&Search+Type={{ _filters["search_type"] | url_encode }}">☰ Site Data</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/dashboards/search_console_model::dynamic?Data+Date={{ _filters["data_date"] | url_encode }}&Country={{ _filters["country_upper"] | url_encode }}&Device={{ _filters["device"] | url_encode }}&Search+Type={{ _filters["search_type"] | url_encode }}">Dynamic<a>
      </nav>
      </div>
      ;;
  }

  dimension: nav_bar_dynamic {
    hidden:no
    type: string
    sql: " " ;;
    group_label: "Navigation Bar Fields"
    html:
        <div style="border-radius: 5px; padding: 5px 10px; background: #08B248; height: 60px; color: red; text-align: center;">
          <nav style="font-size: 18px;  text-align: center;">
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px;" href="/dashboards/search_console_model::site_data?Data+Date={{ _filters["data_date"] | url_encode }}&Country={{ _filters["country_upper"] | url_encode }}&Device={{ _filters["device"] | url_encode }}&Search+Type={{ _filters["search_type"] | url_encode }}">☰ Site Data</a>
            <a style="color: #efefef; padding: 5px 15px; float: left; line-height: 40px; font-weight: bold;" href="/dashboards/search_console_model::dynamic?Data+Date={{ _filters["data_date"] | url_encode }}&Country={{ _filters["country_upper"] | url_encode }}&Device={{ _filters["device"] | url_encode }}&Search+Type={{ _filters["search_type"] | url_encode }}">Dynamic<a>
      </nav>
      </div>
      ;;
  }

}
