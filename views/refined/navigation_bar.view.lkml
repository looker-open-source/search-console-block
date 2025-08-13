# include: "/views/refined/device_summary.view.lkml"

view: navigation_bar {
  fields_hidden_by_default: yes
  derived_table: {
    sql: SELECT
              {{ _filters['date_filter_date'] | sql_quote }} as date,
              {{ _filters['search_type'] | sql_quote }} as search_type;;

  }

  dimension_group: date_filter {
    type: time
    hidden: no
    sql: ${TABLE}.date ;;
    timeframes: [date]
  }

  dimension: search_type {
    type: string
    hidden: no
    sql: ${TABLE}.search_type ;;
  }

  dimension: horizontal_navigation_bar_dynamic {
    hidden: no
    type: string
    sql: "" ;;
    html:
    <div style="background: #ffffff; font-family: Arial, sans-serif; border-bottom: 1px solid #e0e0e0; padding: 10px; display: flex; align-items: center; justify-content: flex-start; gap: 10px;">

                  {%- assign style_inactive = "display: inline-block; color: #555; padding: 8px 16px; text-decoration: none; font-size: 16px; border-radius: 20px;" -%}
                  {%- assign style_active_green = "display: inline-block; background-color: #e8f5e9; color: #0d652d; padding: 8px 16px; font-weight: bold; border-radius: 20px; text-decoration: none; font-size: 16px; pointer-events: none; cursor: default;" -%}
                  {%- assign style_active_yellow = "display: inline-block; background-color: #fff4e5; color: #b96a00; padding: 8px 16px; font-weight: bold; border-radius: 20px; text-decoration: none; font-size: 16px; pointer-events: none; cursor: default;" -%}


      {% if _explore._dashboard_url contains '::overview' %}
      <span style="{{ style_active_green }}">☰ Overview </span>
      {% else %}
      <a style="{{ style_inactive }}" href="/embed/dashboards/search_console_model::overview?Date={{ _filters['date_filter_date'] | url_encode }}&SearchType={{ _filters['search_type'] | url_encode }}">☰ Overview</a>
      {% endif %}


      {% if _explore._dashboard_url contains '::insights' %}
      <span style="{{ style_active_green }}">Insights</span>
      {% else %}
      <a style="{{ style_inactive }}" href="/embed/dashboards/search_console_model::insights?Date={{ _filters['date_filter_date'] | url_encode }}&SearchType={{ _filters['search_type'] | url_encode }}">Insights</a>
      {% endif %}


      {% if _explore._dashboard_url contains '::performance' %}
      <span style="{{ style_active_yellow }}">Performance</span>
      {% else %}
      <a style="{{ style_inactive }}" href="/embed/dashboards/search_console_model::performance?Date={{ _filters['date_filter_date'] | url_encode }}&SearchType={{ _filters['search_type'] | url_encode }}">Performance</a>
      {% endif %}

      </div> ;;
  }
}
