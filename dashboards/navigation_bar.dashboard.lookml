---
- dashboard: navigation_bar
  title: navigation_bar
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: kRWZkgrWG83sgWpDT3FPnf
  elements:
  - title: NavBar
    name: NavBar
    model: search_console_model
    explore: navigation_bar
    type: single_value
    fields: [navigation_bar.horizontal_navigation_bar_dynamic]
    sorts: [navigation_bar.horizontal_navigation_bar_dynamic]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    listen:
      Date: navigation_bar.date_filter
      Search Type: navigation_bar.search_type_filter
    row: 0
    col: 0
    width: 24
    height: 2
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
    field: searchdata_site_impression.date_filter
  - name: Search Type
    title: Search Type
    type: field_filter
    default_value: "%WEB%"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: search_console_model
    explore: searchdata_site_impression
    listens_to_filters: []
    field: searchdata_site_impression.search_type_filter
