---
- dashboard: dynamic
  title: Dynamic
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_location_top: false
  preferred_slug: 0ln6ELwd3XRGTKTMDNsBot
  elements:
  - title: Map
    name: Map
    model: search_console_model
    explore: Impressions
    type: looker_geo_choropleth
    fields: [Impressions.country_upper, Impressions.dynamic_console_metric]
    filters: {}
    sorts: [Impressions.dynamic_console_metric desc 0]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    map: world
    map_projection: equirectangular
    show_view_names: true
    quantize_colors: false
    show_antarctica: false
    colors: ["#3a71fc"]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Site URL: Impressions.site_url
      Data Date: Impressions.data_date
      Dynamic Metric: Impressions.dynamic_metric
    row: 3
    col: 0
    width: 24
    height: 11
  - title: Word Cloud Queries
    name: Word Cloud Queries
    model: search_console_model
    explore: Impressions
    type: looker_wordcloud
    fields: [Impressions.dynamic_console_metric, Impressions.query]
    filters: {}
    sorts: [Impressions.dynamic_console_metric desc 0]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    rotation: true
    map: world
    map_projection: equirectangular
    show_view_names: true
    quantize_colors: false
    show_antarctica: false
    colors: ["#3a71fc"]
    hidden_fields: []
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
    listen:
      Site URL: Impressions.site_url
      Data Date: Impressions.data_date
      Dynamic Metric: Impressions.dynamic_metric
    row: 14
    col: 0
    width: 15
    height: 13
  - title: Devices
    name: Devices
    model: search_console_model
    explore: Impressions
    type: looker_pie
    fields: [Impressions.dynamic_console_metric, Impressions.device]
    filters: {}
    sorts: [Impressions.dynamic_console_metric desc 0]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    value_labels: labels
    label_type: labPer
    colors: ["#3a71fc"]
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    series_colors:
      TABLET: "#FC9200"
      DESKTOP: "#3a71fc"
      MOBILE: "#08B248"
    series_labels: {}
    rotation: true
    map: world
    map_projection: equirectangular
    show_view_names: true
    quantize_colors: false
    show_antarctica: false
    hidden_fields: []
    hidden_points_if_no: []
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
    listen:
      Site URL: Impressions.site_url
      Data Date: Impressions.data_date
      Dynamic Metric: Impressions.dynamic_metric
    row: 14
    col: 15
    width: 9
    height: 6
  - title: Search Type
    name: Search Type
    model: search_console_model
    explore: Impressions
    type: looker_pie
    fields: [Impressions.dynamic_console_metric, Impressions.search_type]
    filters: {}
    sorts: [Impressions.dynamic_console_metric desc 0]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    value_labels: labels
    label_type: labPer
    colors: ["#3a71fc"]
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    series_colors:
      TABLET: "#FC9200"
      DESKTOP: "#3a71fc"
      MOBILE: "#08B248"
      NEWS: "#FC9200"
      IMAGE: "#2B99F7"
    series_labels: {}
    rotation: true
    map: world
    map_projection: equirectangular
    show_view_names: true
    quantize_colors: false
    show_antarctica: false
    hidden_fields: []
    hidden_points_if_no: []
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
    show_null_points: true
    listen:
      Site URL: Impressions.site_url
      Data Date: Impressions.data_date
      Dynamic Metric: Impressions.dynamic_metric
    row: 20
    col: 15
    width: 9
    height: 7
  - title: Over Time
    name: Over Time
    model: search_console_model
    explore: Impressions
    type: looker_line
    fields: [Impressions.dynamic_console_metric, Impressions.search_type, Impressions.data_date]
    pivots: [Impressions.search_type]
    fill_fields: [Impressions.data_date]
    filters: {}
    sorts: [Impressions.search_type, Impressions.dynamic_console_metric desc 0]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    colors: ["#3a71fc"]
    series_colors:
      TABLET: "#FC9200"
      DESKTOP: "#3a71fc"
      MOBILE: "#08B248"
      NEWS: "#FC9200"
      IMAGE: "#2B99F7"
      VIDEO - Impressions.dynamic_console_metric: "#08B248"
    series_labels: {}
    value_labels: labels
    label_type: labPer
    rotation: true
    map: world
    map_projection: equirectangular
    quantize_colors: false
    show_antarctica: false
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Site URL: Impressions.site_url
      Data Date: Impressions.data_date
      Dynamic Metric: Impressions.dynamic_metric
    row: 27
    col: 0
    width: 24
    height: 7
  - title: ___
    name: ___
    model: search_console_model
    explore: searchdata_site_impression
    type: single_value
    fields: [searchdata_site_impression.nav_bar_dynamic]
    sorts: [searchdata_site_impression.nav_bar_dynamic]
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
      Search Type: searchdata_site_impression.search_type
      Device: searchdata_site_impression.device
    row: 0
    col: 0
    width: 24
    height: 3
  filters:
  - name: Site URL
    title: Site URL
    type: field_filter
    default_value: https://blog.mitienda.com
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: search_console_model
    explore: Impressions
    listens_to_filters: []
    field: Impressions.site_url
  - name: Data Date
    title: Data Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: search_console_model
    explore: Impressions
    listens_to_filters: []
    field: Impressions.data_date
  - name: Dynamic Metric
    title: Dynamic Metric
    type: field_filter
    default_value: clicks
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: search_console_model
    explore: Impressions
    listens_to_filters: []
    field: Impressions.dynamic_metric
  - name: Search Type
    title: Search Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
    model: search_console_model
    explore: searchdata_site_impression
    listens_to_filters: []
    field: searchdata_site_impression.search_type
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
