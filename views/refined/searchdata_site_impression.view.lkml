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
