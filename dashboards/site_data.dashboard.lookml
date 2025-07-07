---
- dashboard: site_data
  title: Site Data
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_location_top: false
  preferred_slug: axDhRfLj8VjXYungbCiBjG
  elements:
  - title: Over Time
    name: Over Time
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_line
    fields: [searchdata_site_impression.data_date, searchdata_site_impression.total_clicks,
      searchdata_site_impression.total_impressions, searchdata_site_impression.ctr]
    fill_fields: [searchdata_site_impression.data_date]
    sorts: [searchdata_site_impression.data_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: searchdata_site_impression.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: searchdata_site_impression.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: searchdata_site_impression.total_clicks,
            id: searchdata_site_impression.total_clicks, name: Clcks}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: '', orientation: right, series: [{axisId: searchdata_site_impression.total_impressions,
            id: searchdata_site_impression.total_impressions, name: Impressions}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [searchdata_site_impression.total_impressions]
    series_colors:
      searchdata_site_impression.total_impressions: "#1A73E8"
      searchdata_site_impression.ctr: "#1cc240"
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Data Date: searchdata_site_impression.data_date
      Country: searchdata_site_impression.country
      Device: searchdata_site_impression.device
      Search Type: searchdata_site_impression.search_type
      Site URL: searchdata_site_impression.site_url
    row: 2
    col: 7
    width: 17
    height: 11
  - title: Scorecards
    name: Scorecards
    model: search_console_model
    explore: searchdata_site_impression
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [searchdata_site_impression.total_clicks, searchdata_site_impression.total_impressions,
      searchdata_site_impression.ctr, searchdata_site_impression.avg_site_position]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: vertical
    style_searchdata_site_impression.total_clicks: "#E52592"
    show_title_searchdata_site_impression.total_clicks: true
    title_placement_searchdata_site_impression.total_clicks: above
    value_format_searchdata_site_impression.total_clicks: ''
    style_searchdata_site_impression.total_impressions: "#1A73E8"
    show_title_searchdata_site_impression.total_impressions: true
    title_placement_searchdata_site_impression.total_impressions: above
    value_format_searchdata_site_impression.total_impressions: ''
    show_comparison_searchdata_site_impression.total_impressions: false
    style_searchdata_site_impression.ctr: "#1cc240"
    show_title_searchdata_site_impression.ctr: true
    title_placement_searchdata_site_impression.ctr: above
    value_format_searchdata_site_impression.ctr: ''
    show_comparison_searchdata_site_impression.ctr: false
    style_searchdata_site_impression.avg_site_position: "#db1e3b"
    show_title_searchdata_site_impression.avg_site_position: true
    title_placement_searchdata_site_impression.avg_site_position: above
    value_format_searchdata_site_impression.avg_site_position: ''
    show_comparison_searchdata_site_impression.avg_site_position: false
    style_sum_of_impressions: "#0d4dc4"
    show_title_sum_of_impressions: true
    title_override_sum_of_impressions: Total Impressions
    title_placement_sum_of_impressions: below
    value_format_sum_of_impressions: ''
    style_sum_of_clicks: "#31a8c4"
    show_title_sum_of_clicks: true
    title_override_sum_of_clicks: Total Clicks
    title_placement_sum_of_clicks: below
    value_format_sum_of_clicks: ''
    show_comparison_sum_of_clicks: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_impressions,
            id: DESKTOP - sum_of_impressions, name: DESKTOP - Sum of Impressions},
          {axisId: sum_of_impressions, id: MOBILE - sum_of_impressions, name: MOBILE
              - Sum of Impressions}, {axisId: sum_of_impressions, id: TABLET - sum_of_impressions,
            name: TABLET - Sum of Impressions}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: sum_of_clicks, id: DESKTOP
              - sum_of_clicks, name: DESKTOP - Sum of Clicks}, {axisId: sum_of_clicks,
            id: MOBILE - sum_of_clicks, name: MOBILE - Sum of Clicks}, {axisId: sum_of_clicks,
            id: TABLET - sum_of_clicks, name: TABLET - Sum of Clicks}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    hidden_pivots: {}
    title_hidden: true
    listen:
      Data Date: searchdata_site_impression.data_date
      Country: searchdata_site_impression.country
      Device: searchdata_site_impression.device
      Search Type: searchdata_site_impression.search_type
      Site URL: searchdata_site_impression.site_url
    row: 3
    col: 0
    width: 7
    height: 9
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    body_text: '[{"type":"h1","children":[{"text":" "}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 12
    col: 0
    width: 7
    height: 1
  - name: ''
    type: text
    title_text: ''
    body_text: '[{"type":"h1","children":[{"text":" "}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 2
    col: 0
    width: 7
    height: 1
  - title: Queries
    name: Queries
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_grid
    fields: [searchdata_site_impression.query, searchdata_site_impression.total_clicks,
      searchdata_site_impression.total_impressions]
    filters:
      searchdata_site_impression.query: "-NULL"
    sorts: [searchdata_site_impression.total_clicks desc 0]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      sum_of_impressions:
        is_active: true
        palette:
          palette_id: 0fb5866e-1999-6409-41e8-b2af36f436dd
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#c4d3ff"
          - "#1A73E8"
      sum_of_clicks:
        is_active: true
        palette:
          palette_id: 044153e7-3ea7-1615-cfd0-6dea7d738718
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffc7fe"
          - "#E52592"
      searchdata_site_impression.total_clicks:
        is_active: true
        palette:
          palette_id: a7a96d7b-3a8c-2d63-175d-9714c155abd9
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffc7fe"
          - "#E52592"
      searchdata_site_impression.total_impressions:
        is_active: true
        palette:
          palette_id: 56bb60f3-1ac0-01ce-0c24-dc808405d725
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#c4d3ff"
          - "#1A73E8"
    hidden_fields: []
    hidden_points_if_no: []
    font_size_main: ''
    orientation: auto
    style_sum_of_impressions: "#0d4dc4"
    show_title_sum_of_impressions: true
    title_override_sum_of_impressions: Total Impressions
    title_placement_sum_of_impressions: below
    value_format_sum_of_impressions: ''
    style_sum_of_clicks: "#31a8c4"
    show_title_sum_of_clicks: true
    title_override_sum_of_clicks: Total Clicks
    title_placement_sum_of_clicks: below
    value_format_sum_of_clicks: ''
    show_comparison_sum_of_clicks: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_impressions,
            id: DESKTOP - sum_of_impressions, name: DESKTOP - Sum of Impressions},
          {axisId: sum_of_impressions, id: MOBILE - sum_of_impressions, name: MOBILE
              - Sum of Impressions}, {axisId: sum_of_impressions, id: TABLET - sum_of_impressions,
            name: TABLET - Sum of Impressions}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: sum_of_clicks, id: DESKTOP
              - sum_of_clicks, name: DESKTOP - Sum of Clicks}, {axisId: sum_of_clicks,
            id: MOBILE - sum_of_clicks, name: MOBILE - Sum of Clicks}, {axisId: sum_of_clicks,
            id: TABLET - sum_of_clicks, name: TABLET - Sum of Clicks}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Data Date: searchdata_site_impression.data_date
      Country: searchdata_site_impression.country
      Device: searchdata_site_impression.device
      Search Type: searchdata_site_impression.search_type
      Site URL: searchdata_site_impression.site_url
    row: 13
    col: 14
    width: 10
    height: 7
  - title: Countries
    name: Countries
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_grid
    fields: [searchdata_site_impression.country, searchdata_site_impression.total_clicks,
      searchdata_site_impression.total_impressions]
    filters:
      searchdata_site_impression.query: "-NULL"
    sorts: [searchdata_site_impression.total_clicks desc 0]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      sum_of_impressions:
        is_active: true
        palette:
          palette_id: 0fb5866e-1999-6409-41e8-b2af36f436dd
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#c4d3ff"
          - "#1A73E8"
      sum_of_clicks:
        is_active: true
        palette:
          palette_id: 044153e7-3ea7-1615-cfd0-6dea7d738718
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffc7fe"
          - "#E52592"
      searchdata_site_impression.total_impressions:
        is_active: true
        palette:
          palette_id: faabf993-0101-91db-4e15-5634b5e1a7f5
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#c4d3ff"
          - "#1A73E8"
      searchdata_site_impression.total_clicks:
        is_active: true
        palette:
          palette_id: 041a06c7-8be2-9d5c-c243-f49bc0f59d12
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffc7fe"
          - "#E52592"
    hidden_fields: []
    hidden_points_if_no: []
    font_size_main: ''
    orientation: auto
    style_sum_of_impressions: "#0d4dc4"
    show_title_sum_of_impressions: true
    title_override_sum_of_impressions: Total Impressions
    title_placement_sum_of_impressions: below
    value_format_sum_of_impressions: ''
    style_sum_of_clicks: "#31a8c4"
    show_title_sum_of_clicks: true
    title_override_sum_of_clicks: Total Clicks
    title_placement_sum_of_clicks: below
    value_format_sum_of_clicks: ''
    show_comparison_sum_of_clicks: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_impressions,
            id: DESKTOP - sum_of_impressions, name: DESKTOP - Sum of Impressions},
          {axisId: sum_of_impressions, id: MOBILE - sum_of_impressions, name: MOBILE
              - Sum of Impressions}, {axisId: sum_of_impressions, id: TABLET - sum_of_impressions,
            name: TABLET - Sum of Impressions}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: sum_of_clicks, id: DESKTOP
              - sum_of_clicks, name: DESKTOP - Sum of Clicks}, {axisId: sum_of_clicks,
            id: MOBILE - sum_of_clicks, name: MOBILE - Sum of Clicks}, {axisId: sum_of_clicks,
            id: TABLET - sum_of_clicks, name: TABLET - Sum of Clicks}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Data Date: searchdata_site_impression.data_date
      Country: searchdata_site_impression.country
      Device: searchdata_site_impression.device
      Search Type: searchdata_site_impression.search_type
      Site URL: searchdata_site_impression.site_url
    row: 20
    col: 14
    width: 10
    height: 7
  - title: URL
    name: URL
    model: search_console_model
    explore: searchdata_url_impression
    type: looker_grid
    fields: [searchdata_url_impression.url, sum_of_clicks, sum_of_impressions]
    sorts: [sum_of_clicks desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: searchdata_url_impression.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: searchdata_url_impression.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
    series_cell_visualizations:
      sum_of_clicks:
        is_active: true
        palette:
          palette_id: 172d8615-6a2e-e253-23c0-52bd4f5a0c0d
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffc7fe"
          - "#E52592"
      sum_of_impressions:
        is_active: true
        palette:
          palette_id: '091750bb-1e68-5a1e-f54e-29c47ec1532b'
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#c4d3ff"
          - "#1A73E8"
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Data Date: searchdata_url_impression.data_date
      Country: searchdata_url_impression.country
      Device: searchdata_url_impression.device
      Search Type: searchdata_url_impression.search_type
    row: 27
    col: 14
    width: 10
    height: 8
  - title: Query Performance
    name: Query Performance
    model: search_console_model
    explore: searchdata_url_impression
    type: looker_scatter
    fields: [average_of_sum_position, sum_of_impressions, searchdata_url_impression.query,
      searchdata_url_impression.clicks]
    pivots: [searchdata_url_impression.query]
    filters:
      searchdata_url_impression.query: "-NULL"
    sorts: [searchdata_url_impression.query, average_of_sum_position desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: searchdata_url_impression.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: searchdata_url_impression.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: searchdata_url_impression.sum_position
      expression: ''
      label: Average of Sum Position
      measure: average_of_sum_position
      type: average
    query_timezone: America/Los_Angeles
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_sum_position,
            id: DESKTOP - average_of_sum_position, name: DESKTOP}, {axisId: average_of_sum_position,
            id: MOBILE - average_of_sum_position, name: MOBILE}, {axisId: average_of_sum_position,
            id: TABLET - average_of_sum_position, name: TABLET}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    size_by_field: sum_of_impressions
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels: {}
    cluster_points: false
    quadrants_enabled: true
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 8
    custom_quadrant_point_y: 6.6
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      sum_of_clicks:
        is_active: true
        palette:
          palette_id: 28dedf8c-3ad9-f2ff-5f57-a69af49fff22
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#c4d3ff"
          - "#1A73E8"
      sum_of_impressions:
        is_active: true
        palette:
          palette_id: 4fb79857-3325-4522-dc50-1f41c11d665c
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffc7fe"
          - "#E52592"
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    listen:
      Data Date: searchdata_url_impression.data_date
      Country: searchdata_url_impression.country
      Device: searchdata_url_impression.device
      Search Type: searchdata_url_impression.search_type
    row: 13
    col: 0
    width: 14
    height: 22
  - title: ___
    name: ___
    model: search_console_model
    explore: searchdata_site_impression
    type: single_value
    fields: [searchdata_site_impression.nav_bar_site_data]
    sorts: [searchdata_site_impression.nav_bar_site_data]
    limit: 1
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: searchdata_site_impression.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: searchdata_site_impression.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    defaults_version: 1
    listen:
      Data Date: searchdata_site_impression.data_date
      Device: searchdata_site_impression.device
      Country: searchdata_site_impression.country
      Search Type: searchdata_site_impression.search_type
      Site URL: searchdata_site_impression.site_url
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Word Cloud
    name: Word Cloud
    model: search_console_model
    explore: Impressions
    type: looker_wordcloud
    fields: [Impressions.dynamic_console_metric, Impressions.query]
    filters:
      Impressions.dynamic_metric: clicks
      Impressions.query: "-NULL"
    sorts: [Impressions.dynamic_console_metric desc 0]
    limit: 10
    column_limit: 50
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
        reverse: false
    rotation: false
    map: world
    map_projection: equirectangular
    show_view_names: true
    quantize_colors: false
    show_antarctica: false
    colors: ["#3a71fc"]
    hidden_fields:
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 35
    col: 0
    width: 8
    height: 6
  filters:
  - name: Data Date
    title: Data Date
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: search_console_model
    explore: searchdata_site_impression
    listens_to_filters: []
    field: searchdata_site_impression.data_date
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: search_console_model
    explore: searchdata_site_impression
    listens_to_filters: []
    field: searchdata_site_impression.country
  - name: Device
    title: Device
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: search_console_model
    explore: searchdata_site_impression
    listens_to_filters: []
    field: searchdata_site_impression.device
  - name: Search Type
    title: Search Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: popover
    model: search_console_model
    explore: searchdata_site_impression
    listens_to_filters: []
    field: searchdata_site_impression.search_type
  - name: Site URL
    title: Site URL
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: search_console_model
    explore: searchdata_site_impression
    listens_to_filters: []
    field: searchdata_site_impression.site_url
