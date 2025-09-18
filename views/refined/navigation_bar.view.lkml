# include: "/views/refined/device_summary.view.lkml"

view: navigation_bar {
  fields_hidden_by_default: yes
  derived_table: {
    sql: SELECT
              --TIMESTAMP((CURRENT_DATE() - LENGTH("{{ _filters['date_filter']}}"))) as date,
              {{ _filters['search_type_filter'] | sql_quote }} as search_type,

                date
        FROM
          UNNEST(GENERATE_TIMESTAMP_ARRAY('2011-01-11 00:00:00', CURRENT_TIMESTAMP(), INTERVAL 1 DAY)) AS date;;

  }

  dimension: date_filter {
    type: date
    hidden: no
    sql: ${TABLE}.date ;;
  }

  dimension: search_type_filter {
    type: string
    hidden: no
    sql: ${TABLE}.search_type ;;
  }

  dimension: horizontal_navigation_bar_dynamic {
    hidden: no
    type: string
    sql: "" ;;
    html:
    <div style="background: #ffffff; font-family: Arial, sans-serif; border-bottom: 1px solid #e0e0e0; padding: 12px; display: flex; align-items: center; justify-content: flex-start; gap: 10px;">

                  {%- assign style_inactive = "display: inline-block; color: #555; padding: 8px 16px; text-decoration: none; font-size: 18px; border-radius: 20px;" -%}
                  {%- assign style_active_green = "display: inline-block; background-color: #e8f5e9; color: #0d652d; padding: 8px 18px; font-weight: bold; border-radius: 20px; text-decoration: none; font-size: 18px; pointer-events: none; cursor: default;" -%}
                  {%- assign style_active_yellow = "display: inline-block; background-color: #fff4e5; color: #b96a00; padding: 8px 18px; font-weight: bold; border-radius: 20px; text-decoration: none; font-size: 18px; pointer-events: none; cursor: default;" -%}


      {% if _explore._dashboard_url contains '::insights' %}
      <span style="{{ style_active_green }}">☰ Insights </span>
      {% else %}
      <a style="{{ style_inactive }}" href="/embed/dashboards/search_console_model::insights?Date={{ _filters['date_filter'] | url_encode }}&Search+Type={{ _filters['search_type_filter'] | url_encode }}">☰ Insights</a>
      {% endif %}


      {% if _explore._dashboard_url contains '::performance' %}
      <span style="{{ style_active_green }}">Performance</span>
      {% else %}
      <a style="{{ style_inactive }}" href="/embed/dashboards/search_console_model::performance?Date={{ _filters['date_filter'] | url_encode }}&Search+Type={{ _filters['search_type_filter'] | url_encode }}">Performance</a>
      {% endif %}

      </div> ;;
  }
}
