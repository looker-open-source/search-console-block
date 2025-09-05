---
- dashboard: performance
  extends: navigation_bar
  title: Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: CilNbc4UEZlSG0AkI6d7a7
  elements:
  - title: Over Time
    name: Over Time
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_line
    fields: [searchdata_site_impression.dynamic_console_metric, searchdata_site_impression.data_date,
      searchdata_site_impression.total_impressions, searchdata_site_impression.ctr,
      searchdata_site_impression.avg_site_position]
    fill_fields: [searchdata_site_impression.data_date]
    sorts: [searchdata_site_impression.data_date desc]
    limit: 500
    column_limit: 50
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: searchdata_site_impression.dynamic_console_metric,
            id: searchdata_site_impression.dynamic_console_metric, name: "Site Impression\
              \  Clicks\n        "}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: left, series: [{axisId: searchdata_site_impression.total_impressions,
            id: searchdata_site_impression.total_impressions, name: Site Impression
              Impressions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: searchdata_site_impression.ctr, id: searchdata_site_impression.ctr,
            name: Site Impression CTR}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: searchdata_site_impression.avg_site_position,
            id: searchdata_site_impression.avg_site_position, name: Site Impression
              Average Site Position}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: [searchdata_site_impression.ctr, searchdata_site_impression.avg_site_position]
    hide_legend: false
    series_colors:
      searchdata_site_impression.dynamic_console_metric: "#2B99F7"
      searchdata_site_impression.ctr: "#FC9200"
    series_labels: {}
    swap_axes: false
    value_labels: legend
    label_type: labPer
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
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
    title_hidden: true
    listen:
      Search Type: searchdata_site_impression.search_type
      Dynamic Dimension: searchdata_site_impression.dynamic_dimension
      Date: searchdata_site_impression.data_date
    row: 5
    col: 0
    width: 24
    height: 7
  - title: Clicks
    name: Clicks
    model: search_console_model
    explore: searchdata_site_impression
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [searchdata_site_impression.dynamic_console_metric, searchdata_site_impression.total_impressions,
      searchdata_site_impression.ctr, searchdata_site_impression.avg_site_position]
    sorts: [searchdata_site_impression.avg_site_position desc]
    limit: 500
    column_limit: 50
    hidden_fields: [searchdata_site_impression.total_impressions, searchdata_site_impression.ctr,
      searchdata_site_impression.avg_site_position]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: auto
    style_searchdata_site_impression.dynamic_console_metric: "#3A4245"
    show_title_searchdata_site_impression.dynamic_console_metric: false
    title_placement_searchdata_site_impression.dynamic_console_metric: above
    value_format_searchdata_site_impression.dynamic_console_metric: ''
    title_placement_searchdata_site_impression.total_impressions: above
    title_placement_searchdata_site_impression.ctr: above
    title_placement_searchdata_site_impression.avg_site_position: above
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    x_axis_gridlines: true
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: searchdata_site_impression.dynamic_console_metric,
            id: searchdata_site_impression.dynamic_console_metric, name: "Site Impression\
              \  Clicks\n        "}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: left, series: [{axisId: searchdata_site_impression.total_impressions,
            id: searchdata_site_impression.total_impressions, name: Site Impression
              Impressions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: searchdata_site_impression.ctr, id: searchdata_site_impression.ctr,
            name: Site Impression CTR}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: searchdata_site_impression.avg_site_position,
            id: searchdata_site_impression.avg_site_position, name: Site Impression
              Average Site Position}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: [searchdata_site_impression.ctr, searchdata_site_impression.avg_site_position]
    hide_legend: false
    legend_position: center
    point_style: none
    series_colors:
      searchdata_site_impression.dynamic_console_metric: "#2B99F7"
      searchdata_site_impression.ctr: "#FC9200"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: false
    interpolation: linear
    value_labels: legend
    label_type: labPer
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
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
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    hide_totals: false
    hide_row_totals: false
    style_searchdata_site_impression.ctr: "#3A4245"
    show_title_searchdata_site_impression.ctr: true
    value_format_searchdata_site_impression.ctr: ''
    show_comparison_searchdata_site_impression.ctr: false
    style_searchdata_site_impression.avg_site_position: "#3A4245"
    show_title_searchdata_site_impression.avg_site_position: true
    value_format_searchdata_site_impression.avg_site_position: ''
    show_comparison_searchdata_site_impression.avg_site_position: false
    note_state: collapsed
    note_display: hover
    note_text: 'Total clicks is how many times a user clicked through to your site.
      How this is counted depends on the search result type. '
    listen:
      Search Type: searchdata_site_impression.search_type
      Dynamic Dimension: searchdata_site_impression.dynamic_dimension
      Date: searchdata_site_impression.data_date
    row: 2
    col: 0
    width: 6
    height: 3
  - title: Description
    name: Description
    model: search_console_model
    explore: searchdata_site_impression
    type: looker_grid
    fields: [searchdata_site_impression.dynamic_console_metric, searchdata_site_impression.total_impressions,
      searchdata_site_impression.ctr, searchdata_site_impression.avg_site_position,
      searchdata_site_impression.dynamic_dimension_description]
    filters:
      searchdata_site_impression.dynamic_dimension_description: "-NULL"
    sorts: [searchdata_site_impression.dynamic_console_metric desc 0]
    limit: 20
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '15'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      searchdata_site_impression.dynamic_console_metric:
        is_active: true
        value_display: true
        palette:
          palette_id: 47dcb9e8-1a4d-43ce-8071-6f4b64d5e85a
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      searchdata_site_impression.ctr:
        is_active: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_fields: []
    hidden_points_if_no: []
    x_axis_gridlines: true
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: searchdata_site_impression.dynamic_console_metric,
            id: searchdata_site_impression.dynamic_console_metric, name: "Site Impression\
              \  Clicks\n        "}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: left, series: [{axisId: searchdata_site_impression.total_impressions,
            id: searchdata_site_impression.total_impressions, name: Site Impression
              Impressions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: searchdata_site_impression.ctr, id: searchdata_site_impression.ctr,
            name: Site Impression CTR}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: searchdata_site_impression.avg_site_position,
            id: searchdata_site_impression.avg_site_position, name: Site Impression
              Average Site Position}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    hidden_series: [searchdata_site_impression.ctr, searchdata_site_impression.avg_site_position]
    hide_legend: false
    legend_position: center
    point_style: none
    series_colors:
      searchdata_site_impression.dynamic_console_metric: "#2B99F7"
      searchdata_site_impression.ctr: "#FC9200"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: false
    interpolation: linear
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    font_size_main: ''
    orientation: auto
    style_searchdata_site_impression.dynamic_console_metric: "#3A4245"
    show_title_searchdata_site_impression.dynamic_console_metric: true
    title_placement_searchdata_site_impression.dynamic_console_metric: above
    value_format_searchdata_site_impression.dynamic_console_metric: ''
    style_searchdata_site_impression.total_impressions: "#3A4245"
    show_title_searchdata_site_impression.total_impressions: true
    title_placement_searchdata_site_impression.total_impressions: above
    value_format_searchdata_site_impression.total_impressions: ''
    show_comparison_searchdata_site_impression.total_impressions: false
    style_searchdata_site_impression.ctr: "#3A4245"
    show_title_searchdata_site_impression.ctr: true
    title_placement_searchdata_site_impression.ctr: above
    value_format_searchdata_site_impression.ctr: ''
    show_comparison_searchdata_site_impression.ctr: false
    style_searchdata_site_impression.avg_site_position: "#3A4245"
    show_title_searchdata_site_impression.avg_site_position: true
    title_placement_searchdata_site_impression.avg_site_position: above
    value_format_searchdata_site_impression.avg_site_position: ''
    show_comparison_searchdata_site_impression.avg_site_position: false
    note_state: collapsed
    note_display: above
    note_text: 'Explore Further: Modify Dashboard Filter to Display Diverse Segments
      📊 ⬆️'
    listen:
      Search Type: searchdata_site_impression.search_type
      Dynamic Dimension: searchdata_site_impression.dynamic_dimension
      Date: searchdata_site_impression.data_date
    row: 14
    col: 0
    width: 24
    height: 12
  - title: New Tile
    name: New Tile
    model: search_console_model
    explore: searchdata_site_impression
    type: single_value
    fields: [searchdata_site_impression.dynamic_dimension_title]
    sorts: [searchdata_site_impression.dynamic_dimension_title]
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
    custom_color: "#079c98"
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
    note_state: collapsed
    note_display: hover
    note_text: 'Explore Further: Modify Dashboard Filter to Display Diverse Segments
      📊 ⬆️'
    listen:
      Date: searchdata_site_impression.data_date
      Search Type: searchdata_site_impression.search_type
      Dynamic Dimension: searchdata_site_impression.dynamic_dimension
    row: 12
    col: 14
    width: 6
    height: 2
  - name: ''
    type: text
    title_text: ''
    body_text: ''
    row: 26
    col: 0
    width: 2
    height: 12
  - title: Total Impressions
    name: Total Impressions
    model: search_console_model
    explore: searchdata_site_impression
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [searchdata_site_impression.dynamic_console_metric, searchdata_site_impression.total_impressions,
      searchdata_site_impression.ctr, searchdata_site_impression.avg_site_position]
    limit: 500
    column_limit: 50
    hidden_fields: [searchdata_site_impression.dynamic_console_metric, searchdata_site_impression.ctr,
      searchdata_site_impression.avg_site_position]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: auto
    style_searchdata_site_impression.total_impressions: "#3A4245"
    show_title_searchdata_site_impression.total_impressions: false
    title_placement_searchdata_site_impression.total_impressions: above
    value_format_searchdata_site_impression.total_impressions: ''
    show_title_searchdata_site_impression.dynamic_console_metric: true
    title_placement_searchdata_site_impression.dynamic_console_metric: above
    title_placement_searchdata_site_impression.ctr: above
    title_placement_searchdata_site_impression.avg_site_position: above
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    x_axis_gridlines: true
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: searchdata_site_impression.dynamic_console_metric,
            id: searchdata_site_impression.dynamic_console_metric, name: "Site Impression\
              \  Clicks\n        "}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: left, series: [{axisId: searchdata_site_impression.total_impressions,
            id: searchdata_site_impression.total_impressions, name: Site Impression
              Impressions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: searchdata_site_impression.ctr, id: searchdata_site_impression.ctr,
            name: Site Impression CTR}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: searchdata_site_impression.avg_site_position,
            id: searchdata_site_impression.avg_site_position, name: Site Impression
              Average Site Position}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: [searchdata_site_impression.ctr, searchdata_site_impression.avg_site_position]
    hide_legend: false
    legend_position: center
    point_style: none
    series_colors:
      searchdata_site_impression.dynamic_console_metric: "#2B99F7"
      searchdata_site_impression.ctr: "#FC9200"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: false
    interpolation: linear
    value_labels: legend
    label_type: labPer
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
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
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    hide_totals: false
    hide_row_totals: false
    style_searchdata_site_impression.ctr: "#3A4245"
    show_title_searchdata_site_impression.ctr: true
    value_format_searchdata_site_impression.ctr: ''
    show_comparison_searchdata_site_impression.ctr: false
    style_searchdata_site_impression.avg_site_position: "#3A4245"
    show_title_searchdata_site_impression.avg_site_position: true
    value_format_searchdata_site_impression.avg_site_position: ''
    show_comparison_searchdata_site_impression.avg_site_position: false
    note_state: collapsed
    note_display: hover
    note_text: Total impressions is how many times a user saw a link to your site
      in search results. This is calculated differently for images and other search
      result types, depending on whether or not the result was scrolled into view.
    listen:
      Search Type: searchdata_site_impression.search_type
      Dynamic Dimension: searchdata_site_impression.dynamic_dimension
      Date: searchdata_site_impression.data_date
    row: 2
    col: 6
    width: 6
    height: 3
  - title: Average Position
    name: Average Position
    model: search_console_model
    explore: searchdata_site_impression
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [searchdata_site_impression.dynamic_console_metric, searchdata_site_impression.total_impressions,
      searchdata_site_impression.ctr, searchdata_site_impression.avg_site_position]
    limit: 500
    column_limit: 50
    hidden_fields: [searchdata_site_impression.dynamic_console_metric, searchdata_site_impression.ctr,
      searchdata_site_impression.avg_site_position]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: auto
    style_searchdata_site_impression.total_impressions: "#3A4245"
    show_title_searchdata_site_impression.total_impressions: false
    title_placement_searchdata_site_impression.total_impressions: above
    value_format_searchdata_site_impression.total_impressions: ''
    show_title_searchdata_site_impression.dynamic_console_metric: true
    title_placement_searchdata_site_impression.dynamic_console_metric: above
    title_placement_searchdata_site_impression.ctr: above
    title_placement_searchdata_site_impression.avg_site_position: above
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    x_axis_gridlines: true
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: searchdata_site_impression.dynamic_console_metric,
            id: searchdata_site_impression.dynamic_console_metric, name: "Site Impression\
              \  Clicks\n        "}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: left, series: [{axisId: searchdata_site_impression.total_impressions,
            id: searchdata_site_impression.total_impressions, name: Site Impression
              Impressions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: searchdata_site_impression.ctr, id: searchdata_site_impression.ctr,
            name: Site Impression CTR}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: searchdata_site_impression.avg_site_position,
            id: searchdata_site_impression.avg_site_position, name: Site Impression
              Average Site Position}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: [searchdata_site_impression.ctr, searchdata_site_impression.avg_site_position]
    hide_legend: false
    legend_position: center
    point_style: none
    series_colors:
      searchdata_site_impression.dynamic_console_metric: "#2B99F7"
      searchdata_site_impression.ctr: "#FC9200"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: false
    interpolation: linear
    value_labels: legend
    label_type: labPer
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
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
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    hide_totals: false
    hide_row_totals: false
    style_searchdata_site_impression.ctr: "#3A4245"
    show_title_searchdata_site_impression.ctr: true
    value_format_searchdata_site_impression.ctr: ''
    show_comparison_searchdata_site_impression.ctr: false
    style_searchdata_site_impression.avg_site_position: "#3A4245"
    show_title_searchdata_site_impression.avg_site_position: true
    value_format_searchdata_site_impression.avg_site_position: ''
    show_comparison_searchdata_site_impression.avg_site_position: false
    note_state: collapsed
    note_display: hover
    note_text: 'Average position is the average position of your site in search results,
      based on its highest position whenever it appeared in a search. Individual page
      position is available in the table below the chart. Position determination can
      be complicated by features such as carousels or Knowledge Panels. '
    listen:
      Search Type: searchdata_site_impression.search_type
      Dynamic Dimension: searchdata_site_impression.dynamic_dimension
      Date: searchdata_site_impression.data_date
    row: 2
    col: 18
    width: 6
    height: 3
  - title: Average CTR
    name: Average CTR
    model: search_console_model
    explore: searchdata_site_impression
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [searchdata_site_impression.dynamic_console_metric, searchdata_site_impression.total_impressions,
      searchdata_site_impression.ctr, searchdata_site_impression.avg_site_position]
    limit: 500
    column_limit: 50
    hidden_fields: [searchdata_site_impression.dynamic_console_metric, searchdata_site_impression.avg_site_position,
      searchdata_site_impression.total_impressions]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '12'
    orientation: auto
    style_searchdata_site_impression.ctr: "#3A4245"
    show_title_searchdata_site_impression.ctr: false
    title_placement_searchdata_site_impression.ctr: above
    value_format_searchdata_site_impression.ctr: ''
    style_searchdata_site_impression.total_impressions: "#3A4245"
    show_title_searchdata_site_impression.total_impressions: false
    title_placement_searchdata_site_impression.total_impressions: above
    value_format_searchdata_site_impression.total_impressions: ''
    show_title_searchdata_site_impression.dynamic_console_metric: true
    title_placement_searchdata_site_impression.dynamic_console_metric: above
    title_placement_searchdata_site_impression.avg_site_position: above
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    x_axis_gridlines: true
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: searchdata_site_impression.dynamic_console_metric,
            id: searchdata_site_impression.dynamic_console_metric, name: "Site Impression\
              \  Clicks\n        "}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: left, series: [{axisId: searchdata_site_impression.total_impressions,
            id: searchdata_site_impression.total_impressions, name: Site Impression
              Impressions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: searchdata_site_impression.ctr, id: searchdata_site_impression.ctr,
            name: Site Impression CTR}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: searchdata_site_impression.avg_site_position,
            id: searchdata_site_impression.avg_site_position, name: Site Impression
              Average Site Position}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: [searchdata_site_impression.ctr, searchdata_site_impression.avg_site_position]
    hide_legend: false
    legend_position: center
    point_style: none
    series_colors:
      searchdata_site_impression.dynamic_console_metric: "#2B99F7"
      searchdata_site_impression.ctr: "#FC9200"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: false
    interpolation: linear
    value_labels: legend
    label_type: labPer
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
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
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    hide_totals: false
    hide_row_totals: false
    show_comparison_searchdata_site_impression.ctr: false
    style_searchdata_site_impression.avg_site_position: "#3A4245"
    show_title_searchdata_site_impression.avg_site_position: true
    value_format_searchdata_site_impression.avg_site_position: ''
    show_comparison_searchdata_site_impression.avg_site_position: false
    note_state: collapsed
    note_display: hover
    note_text: Average click-through rate (CTR) is the percentage of impressions that
      resulted in a click
    listen:
      Search Type: searchdata_site_impression.search_type
      Dynamic Dimension: searchdata_site_impression.dynamic_dimension
      Date: searchdata_site_impression.data_date
    row: 2
    col: 12
    width: 6
    height: 3
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":""}],"id":"o7rov"},{"type":"h2","children":[{"text":"Dynamic
      dimension"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 12
    col: 6
    width: 8
    height: 2
  filters:
  - name: Dynamic Dimension
    title: Dynamic Dimension
    type: field_filter
    default_value: queries
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: search_console_model
    explore: searchdata_site_impression
    listens_to_filters: []
    field: searchdata_site_impression.dynamic_dimension
