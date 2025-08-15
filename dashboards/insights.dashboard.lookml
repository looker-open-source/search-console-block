---
- dashboard: insights
  extends: navigation_bar
  title: Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: VNAsA1bjsYWyCe6t7iEU8f
  elements:
  - title: Scorecards
    name: Scorecards
    model: search_console_model
    explore: searchdata_site_impression
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [searchdata_site_impression.selected_period_clicks, searchdata_site_impression.previous_period_clicks,
      searchdata_site_impression.selected_period_impressions, searchdata_site_impression.previous_period_impressions]
    filters: {}
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: horizontal
    dividers: false
    title_placement_searchdata_site_impression.selected_period_clicks: above
    show_comparison_searchdata_site_impression.previous_period_clicks: true
    comparison_style_searchdata_site_impression.previous_period_clicks: percentage_change
    comparison_show_label_searchdata_site_impression.previous_period_clicks: false
    pos_is_bad_searchdata_site_impression.previous_period_clicks: false
    title_placement_searchdata_site_impression.selected_period_impressions: above
    show_comparison_searchdata_site_impression.previous_period_impressions: true
    comparison_style_searchdata_site_impression.previous_period_impressions: percentage_change
    comparison_show_label_searchdata_site_impression.previous_period_impressions: false
    pos_is_bad_searchdata_site_impression.previous_period_impressions: false
    comparison_label_placement_searchdata_site_impression.previous_period_impressions: below
    comp_value_format_searchdata_site_impression.previous_period_impressions: ''
    comparison_label_placement_searchdata_site_impression.previous_period_clicks: below
    comp_value_format_searchdata_site_impression.previous_period_clicks: ''
    style_searchdata_site_impression.total_clicks: "#3A4245"
    show_title_searchdata_site_impression.total_clicks: true
    title_placement_searchdata_site_impression.total_clicks: above
    value_format_searchdata_site_impression.total_clicks: ''
    show_comparison_searchdata_site_impression.clicks_past_month: true
    comparison_style_searchdata_site_impression.clicks_past_month: percentage_change
    comparison_show_label_searchdata_site_impression.clicks_past_month: false
    pos_is_bad_searchdata_site_impression.clicks_past_month: false
    style_searchdata_site_impression.total_impressions: "#3A4245"
    show_title_searchdata_site_impression.total_impressions: true
    title_placement_searchdata_site_impression.total_impressions: above
    value_format_searchdata_site_impression.total_impressions: ''
    show_comparison_searchdata_site_impression.total_impressions: false
    show_comparison_searchdata_site_impression.impressions_past_month: true
    comparison_style_searchdata_site_impression.impressions_past_month: percentage_change
    comparison_show_label_searchdata_site_impression.impressions_past_month: false
    pos_is_bad_searchdata_site_impression.impressions_past_month: false
    comparison_label_placement_searchdata_site_impression.impressions_past_month: below
    comp_value_format_searchdata_site_impression.impressions_past_month: ''
    style_searchdata_site_impression.impressions_past_month: "#3A4245"
    show_title_searchdata_site_impression.impressions_past_month: true
    title_placement_searchdata_site_impression.impressions_past_month: above
    value_format_searchdata_site_impression.impressions_past_month: ''
    comparison_label_placement_searchdata_site_impression.clicks_past_month: below
    comp_value_format_searchdata_site_impression.clicks_past_month: ''
    style_searchdata_site_impression.clicks_past_month: "#3A4245"
    show_title_searchdata_site_impression.clicks_past_month: true
    title_placement_searchdata_site_impression.clicks_past_month: above
    value_format_searchdata_site_impression.clicks_past_month: ''
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    show_comparison_searchdata_site_impression.total_clicks: false
    title_hidden: true
    listen:
      Date: searchdata_site_impression.date_filter
      Search Type: searchdata_site_impression.search_type
    row: 0
    col: 3
    width: 18
    height: 3
  - title: Line Clicks
    name: Line Clicks
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_line
    fields: [searchdata_site_impression.total_clicks, searchdata_site_impression.total_impressions,
      searchdata_site_impression.data_date]
    fill_fields: [searchdata_site_impression.data_date]
    sorts: [searchdata_site_impression.data_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: searchdata_site_impression.total_clicks,
            id: searchdata_site_impression.total_clicks, name: Clcks}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    series_types:
      searchdata_site_impression.total_clicks: area
    series_labels: {}
    font_size_main: '12'
    orientation: horizontal
    style_searchdata_site_impression.total_clicks: "#3A4245"
    show_title_searchdata_site_impression.total_clicks: true
    title_placement_searchdata_site_impression.total_clicks: above
    value_format_searchdata_site_impression.total_clicks: ''
    show_comparison_searchdata_site_impression.clicks_past_month: true
    comparison_style_searchdata_site_impression.clicks_past_month: percentage_change
    comparison_show_label_searchdata_site_impression.clicks_past_month: false
    pos_is_bad_searchdata_site_impression.clicks_past_month: false
    style_searchdata_site_impression.total_impressions: "#3A4245"
    show_title_searchdata_site_impression.total_impressions: true
    title_placement_searchdata_site_impression.total_impressions: above
    value_format_searchdata_site_impression.total_impressions: ''
    show_comparison_searchdata_site_impression.total_impressions: false
    show_comparison_searchdata_site_impression.impressions_past_month: true
    comparison_style_searchdata_site_impression.impressions_past_month: percentage_change
    comparison_show_label_searchdata_site_impression.impressions_past_month: false
    pos_is_bad_searchdata_site_impression.impressions_past_month: false
    comparison_label_placement_searchdata_site_impression.impressions_past_month: below
    comp_value_format_searchdata_site_impression.impressions_past_month: ''
    style_searchdata_site_impression.impressions_past_month: "#3A4245"
    show_title_searchdata_site_impression.impressions_past_month: true
    title_placement_searchdata_site_impression.impressions_past_month: above
    value_format_searchdata_site_impression.impressions_past_month: ''
    comparison_label_placement_searchdata_site_impression.clicks_past_month: below
    comp_value_format_searchdata_site_impression.clicks_past_month: ''
    style_searchdata_site_impression.clicks_past_month: "#3A4245"
    show_title_searchdata_site_impression.clicks_past_month: true
    title_placement_searchdata_site_impression.clicks_past_month: above
    value_format_searchdata_site_impression.clicks_past_month: ''
    hidden_fields: [searchdata_site_impression.total_impressions]
    hidden_points_if_no: []
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_comparison_searchdata_site_impression.total_clicks: false
    title_hidden: true
    listen:
      Date: searchdata_site_impression.data_date
      Search Type: searchdata_site_impression.search_type
    row: 3
    col: 3
    width: 9
    height: 1
  - title: Line Clicks (Copy)
    name: Line Clicks (Copy)
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_line
    fields: [searchdata_site_impression.total_clicks, searchdata_site_impression.total_impressions,
      searchdata_site_impression.data_date]
    fill_fields: [searchdata_site_impression.data_date]
    sorts: [searchdata_site_impression.data_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: searchdata_site_impression.total_clicks,
            id: searchdata_site_impression.total_clicks, name: Clcks}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    series_types:
      searchdata_site_impression.total_clicks: area
      searchdata_site_impression.total_impressions: area
    series_colors:
      searchdata_site_impression.total_impressions: "#E8710A"
    series_labels: {}
    font_size_main: '12'
    orientation: horizontal
    style_searchdata_site_impression.total_clicks: "#3A4245"
    show_title_searchdata_site_impression.total_clicks: true
    title_placement_searchdata_site_impression.total_clicks: above
    value_format_searchdata_site_impression.total_clicks: ''
    show_comparison_searchdata_site_impression.clicks_past_month: true
    comparison_style_searchdata_site_impression.clicks_past_month: percentage_change
    comparison_show_label_searchdata_site_impression.clicks_past_month: false
    pos_is_bad_searchdata_site_impression.clicks_past_month: false
    style_searchdata_site_impression.total_impressions: "#3A4245"
    show_title_searchdata_site_impression.total_impressions: true
    title_placement_searchdata_site_impression.total_impressions: above
    value_format_searchdata_site_impression.total_impressions: ''
    show_comparison_searchdata_site_impression.total_impressions: false
    show_comparison_searchdata_site_impression.impressions_past_month: true
    comparison_style_searchdata_site_impression.impressions_past_month: percentage_change
    comparison_show_label_searchdata_site_impression.impressions_past_month: false
    pos_is_bad_searchdata_site_impression.impressions_past_month: false
    comparison_label_placement_searchdata_site_impression.impressions_past_month: below
    comp_value_format_searchdata_site_impression.impressions_past_month: ''
    style_searchdata_site_impression.impressions_past_month: "#3A4245"
    show_title_searchdata_site_impression.impressions_past_month: true
    title_placement_searchdata_site_impression.impressions_past_month: above
    value_format_searchdata_site_impression.impressions_past_month: ''
    comparison_label_placement_searchdata_site_impression.clicks_past_month: below
    comp_value_format_searchdata_site_impression.clicks_past_month: ''
    style_searchdata_site_impression.clicks_past_month: "#3A4245"
    show_title_searchdata_site_impression.clicks_past_month: true
    title_placement_searchdata_site_impression.clicks_past_month: above
    value_format_searchdata_site_impression.clicks_past_month: ''
    hidden_fields: [searchdata_site_impression.total_clicks]
    hidden_points_if_no: []
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_comparison_searchdata_site_impression.total_clicks: false
    title_hidden: true
    listen:
      Date: searchdata_site_impression.data_date
      Search Type: searchdata_site_impression.search_type
    row: 3
    col: 12
    width: 9
    height: 1
  - title: Top
    name: Top
    model: search_console_model
    explore: searchdata_url_impression
    type: looker_grid
    fields: [searchdata_url_impression.url, searchdata_url_impression.clicks_string,
      searchdata_url_impression.selected_period_clicks]
    filters: {}
    sorts: [searchdata_url_impression.selected_period_clicks desc]
    limit: 7
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: true
    minimum_column_width: 75
    series_cell_visualizations: {}
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [searchdata_url_impression.selected_period_clicks]
    listen:
      Date: searchdata_url_impression.date_filter
      Search Type: searchdata_url_impression.search_type
    row: 5
    col: 2
    width: 20
    height: 8
  - title: Trending Up
    name: Trending Up
    model: search_console_model
    explore: searchdata_url_impression
    type: looker_grid
    fields: [searchdata_url_impression.url, searchdata_url_impression.clicks_change_c,
      searchdata_url_impression.clicks_string_change]
    filters: {}
    sorts: [searchdata_url_impression.clicks_change_c desc]
    limit: 7
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: true
    minimum_column_width: 75
    series_cell_visualizations: {}
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [searchdata_url_impression.clicks_change_c]
    listen:
      Date: searchdata_url_impression.date_filter
      Search Type: searchdata_url_impression.search_type
    row: 13
    col: 2
    width: 10
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Your content"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 4
    col: 3
    width: 18
    height: 1
  - title: Trending Down
    name: Trending Down
    model: search_console_model
    explore: searchdata_url_impression
    type: looker_grid
    fields: [searchdata_url_impression.url, searchdata_url_impression.clicks_change_c,
      searchdata_url_impression.clicks_string_change]
    filters: {}
    sorts: [searchdata_url_impression.clicks_change_c]
    limit: 7
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '13'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: true
    minimum_column_width: 75
    series_cell_visualizations: {}
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [searchdata_url_impression.clicks_change_c]
    listen:
      Date: searchdata_url_impression.date_filter
      Search Type: searchdata_url_impression.search_type
    row: 13
    col: 12
    width: 10
    height: 8
  - title: Top
    name: Top (2)
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_grid
    fields: [searchdata_site_impression.selected_period_clicks, searchdata_site_impression.clicks_string,
      searchdata_site_impression.query]
    filters:
      searchdata_site_impression.query: "-NULL"
    sorts: [searchdata_site_impression.selected_period_clicks desc 0]
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      searchdata_site_impression.selected_period_clicks:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_fields: [searchdata_site_impression.selected_period_clicks]
    hidden_points_if_no: []
    font_size_main: ''
    orientation: auto
    style_searchdata_site_impression.selected_period_clicks: "#3A4245"
    show_title_searchdata_site_impression.selected_period_clicks: true
    title_placement_searchdata_site_impression.selected_period_clicks: above
    value_format_searchdata_site_impression.selected_period_clicks: ''
    show_comparison_searchdata_site_impression.previous_period_clicks: true
    comparison_style_searchdata_site_impression.previous_period_clicks: percentage_change
    comparison_show_label_searchdata_site_impression.previous_period_clicks: false
    pos_is_bad_searchdata_site_impression.previous_period_clicks: false
    title_placement_searchdata_site_impression.selected_period_impressions: above
    show_comparison_searchdata_site_impression.previous_period_impressions: true
    comparison_style_searchdata_site_impression.previous_period_impressions: percentage_change
    comparison_show_label_searchdata_site_impression.previous_period_impressions: false
    pos_is_bad_searchdata_site_impression.previous_period_impressions: false
    comparison_label_placement_searchdata_site_impression.previous_period_impressions: below
    comp_value_format_searchdata_site_impression.previous_period_impressions: ''
    comparison_label_placement_searchdata_site_impression.previous_period_clicks: below
    comp_value_format_searchdata_site_impression.previous_period_clicks: ''
    style_searchdata_site_impression.previous_period_clicks: "#3A4245"
    show_title_searchdata_site_impression.previous_period_clicks: true
    title_placement_searchdata_site_impression.previous_period_clicks: above
    value_format_searchdata_site_impression.previous_period_clicks: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    style_searchdata_site_impression.selected_period_impressions: "#3A4245"
    show_title_searchdata_site_impression.selected_period_impressions: true
    value_format_searchdata_site_impression.selected_period_impressions: ''
    show_comparison_searchdata_site_impression.selected_period_impressions: false
    hidden_pivots: {}
    listen:
      Date: searchdata_site_impression.date_filter
      Search Type: searchdata_site_impression.search_type
    row: 22
    col: 2
    width: 20
    height: 7
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h2","children":[{"text":"Queries leading to your site","fontSize":"22px","backgroundColor":"rgb(255,
      255, 255)","color":"rgb(31, 31, 31)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 21
    col: 3
    width: 18
    height: 1
  - title: Trending Up
    name: Trending Up (2)
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_grid
    fields: [searchdata_site_impression.clicks_string, searchdata_site_impression.query,
      searchdata_site_impression.clicks_change]
    filters:
      searchdata_site_impression.query: "-NULL"
    sorts: [searchdata_site_impression.clicks_change desc]
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      searchdata_site_impression.selected_period_clicks:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_fields: [searchdata_site_impression.clicks_change]
    hidden_points_if_no: []
    font_size_main: ''
    orientation: auto
    style_searchdata_site_impression.selected_period_clicks: "#3A4245"
    show_title_searchdata_site_impression.selected_period_clicks: true
    title_placement_searchdata_site_impression.selected_period_clicks: above
    value_format_searchdata_site_impression.selected_period_clicks: ''
    show_comparison_searchdata_site_impression.previous_period_clicks: true
    comparison_style_searchdata_site_impression.previous_period_clicks: percentage_change
    comparison_show_label_searchdata_site_impression.previous_period_clicks: false
    pos_is_bad_searchdata_site_impression.previous_period_clicks: false
    title_placement_searchdata_site_impression.selected_period_impressions: above
    show_comparison_searchdata_site_impression.previous_period_impressions: true
    comparison_style_searchdata_site_impression.previous_period_impressions: percentage_change
    comparison_show_label_searchdata_site_impression.previous_period_impressions: false
    pos_is_bad_searchdata_site_impression.previous_period_impressions: false
    comparison_label_placement_searchdata_site_impression.previous_period_impressions: below
    comp_value_format_searchdata_site_impression.previous_period_impressions: ''
    comparison_label_placement_searchdata_site_impression.previous_period_clicks: below
    comp_value_format_searchdata_site_impression.previous_period_clicks: ''
    style_searchdata_site_impression.previous_period_clicks: "#3A4245"
    show_title_searchdata_site_impression.previous_period_clicks: true
    title_placement_searchdata_site_impression.previous_period_clicks: above
    value_format_searchdata_site_impression.previous_period_clicks: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    style_searchdata_site_impression.selected_period_impressions: "#3A4245"
    show_title_searchdata_site_impression.selected_period_impressions: true
    value_format_searchdata_site_impression.selected_period_impressions: ''
    show_comparison_searchdata_site_impression.selected_period_impressions: false
    hidden_pivots: {}
    listen:
      Date: searchdata_site_impression.date_filter
      Search Type: searchdata_site_impression.search_type
    row: 29
    col: 2
    width: 10
    height: 7
  - title: Trending Down
    name: Trending Down (2)
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_grid
    fields: [searchdata_site_impression.query, searchdata_site_impression.clicks_string,
      searchdata_site_impression.clicks_change]
    filters:
      searchdata_site_impression.query: "-NULL"
      searchdata_site_impression.selected_period_clicks: ">0"
      searchdata_site_impression.clicks_change: NOT NULL
    sorts: [searchdata_site_impression.clicks_change]
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      searchdata_site_impression.selected_period_clicks:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_fields: [searchdata_site_impression.clicks_change]
    hidden_points_if_no: []
    font_size_main: ''
    orientation: auto
    style_searchdata_site_impression.selected_period_clicks: "#3A4245"
    show_title_searchdata_site_impression.selected_period_clicks: true
    title_placement_searchdata_site_impression.selected_period_clicks: above
    value_format_searchdata_site_impression.selected_period_clicks: ''
    show_comparison_searchdata_site_impression.previous_period_clicks: true
    comparison_style_searchdata_site_impression.previous_period_clicks: percentage_change
    comparison_show_label_searchdata_site_impression.previous_period_clicks: false
    pos_is_bad_searchdata_site_impression.previous_period_clicks: false
    title_placement_searchdata_site_impression.selected_period_impressions: above
    show_comparison_searchdata_site_impression.previous_period_impressions: true
    comparison_style_searchdata_site_impression.previous_period_impressions: percentage_change
    comparison_show_label_searchdata_site_impression.previous_period_impressions: false
    pos_is_bad_searchdata_site_impression.previous_period_impressions: false
    comparison_label_placement_searchdata_site_impression.previous_period_impressions: below
    comp_value_format_searchdata_site_impression.previous_period_impressions: ''
    comparison_label_placement_searchdata_site_impression.previous_period_clicks: below
    comp_value_format_searchdata_site_impression.previous_period_clicks: ''
    style_searchdata_site_impression.previous_period_clicks: "#3A4245"
    show_title_searchdata_site_impression.previous_period_clicks: true
    title_placement_searchdata_site_impression.previous_period_clicks: above
    value_format_searchdata_site_impression.previous_period_clicks: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    style_searchdata_site_impression.selected_period_impressions: "#3A4245"
    show_title_searchdata_site_impression.selected_period_impressions: true
    value_format_searchdata_site_impression.selected_period_impressions: ''
    show_comparison_searchdata_site_impression.selected_period_impressions: false
    hidden_pivots: {}
    listen:
      Date: searchdata_site_impression.date_filter
      Search Type: searchdata_site_impression.search_type
    row: 29
    col: 12
    width: 10
    height: 7
  - title: Top Countries
    name: Top Countries
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_grid
    fields: [searchdata_site_impression.percent_total_clicks, searchdata_site_impression.country_upper]
    sorts: [searchdata_site_impression.percent_total_clicks desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: unstyled
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      searchdata_site_impression.percent_total_clicks:
        is_active: true
        palette:
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    defaults_version: 1
    listen:
      Date: searchdata_site_impression.date_filter
      Search Type: searchdata_site_impression.search_type
    row: 36
    col: 2
    width: 10
    height: 6
  - title: Map Countries
    name: Map Countries
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_google_map
    fields: [searchdata_site_impression.percent_total_clicks, searchdata_site_impression.country_upper]
    filters: {}
    sorts: [searchdata_site_impression.percent_total_clicks desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: unstyled
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      searchdata_site_impression.percent_total_clicks:
        is_active: true
        palette:
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    defaults_version: 0
    listen:
      Date: searchdata_site_impression.date_filter
      Search Type: searchdata_site_impression.search_type
    row: 42
    col: 2
    width: 14
    height: 7
  - title: Traffic Sources
    name: Traffic Sources
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_grid
    fields: [searchdata_site_impression.search_type, searchdata_site_impression.dynamic_console_metric]
    sorts: [searchdata_site_impression.dynamic_console_metric desc 0]
    limit: 500
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      searchdata_site_impression.dynamic_console_metric:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    listen:
      Date: searchdata_site_impression.date_filter
    row: 36
    col: 12
    width: 10
    height: 6
  - title: Traffic Sources
    name: Traffic Sources (2)
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_pie
    fields: [searchdata_site_impression.search_type, searchdata_site_impression.dynamic_console_metric]
    sorts: [searchdata_site_impression.dynamic_console_metric desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_labels: {}
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: false
    truncate_header: false
    size_to_fit: false
    minimum_column_width: 75
    series_cell_visualizations:
      searchdata_site_impression.dynamic_console_metric:
        is_active: true
    table_theme: unstyled
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    listen:
      Date: searchdata_site_impression.date_filter
    row: 42
    col: 16
    width: 6
    height: 7
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: search_console_model
    explore: searchdata_site_impression
    listens_to_filters: []
    field: searchdata_site_impression.data_date
  - name: Search Type
    title: Search Type
    type: field_filter
    default_value: WEB
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: search_console_model
    explore: searchdata_site_impression
    listens_to_filters: []
    field: searchdata_site_impression.search_type
