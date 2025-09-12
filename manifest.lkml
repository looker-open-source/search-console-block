project_name: "search-console-synth"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
constant: SC_CONNECTION {
  value: "bq-looker-marketplace"
  export: override_required
}

constant: PROJECT_ID {
  value: "looker-marketplace-development"
  export: override_optional
}

constant: SC_SCHEMA {
  value: "searchconsole"
  export: override_optional
}
new_lookml_runtime: yes


constant: VIZ_CONFIG {
  value:"{% assign vis_config = '{
    \"x_axis_gridlines\": true,
    \"y_axis_gridlines\": true,
    \"show_view_names\": false,
    \"show_y_axis_labels\": true,
    \"show_y_axis_ticks\": true,
    \"y_axis_tick_density\": \"default\",
    \"y_axis_tick_density_custom\": 5,
    \"show_x_axis_label\": true,
    \"show_x_axis_ticks\": true,
    \"y_axis_scale_mode\": \"linear\",
    \"x_axis_reversed\": false,
    \"y_axis_reversed\": false,
    \"plot_size_by_field\": false,
    \"trellis\": \"\",
    \"stacking\": \"\",
    \"limit_displayed_rows\": true,
    \"legend_position\": \"center\",
    \"point_style\": \"circle\",
    \"show_value_labels\": false,
    \"label_density\": 25,
    \"x_axis_scale\": \"auto\",
    \"y_axis_combined\": true,
    \"show_null_points\": false,
    \"interpolation\": \"linear\",
    \"x_axis_label\": \"Date\",
    \"x_axis_zoom\": true,
    \"y_axis_zoom\": true,
    \"limit_displayed_rows_values\": {
        \"show_hide\": \"show\",
        \"first_last\": \"first\",
        \"num_rows\": \"20\"
    },
    \"hidden_series\": [
        \"searchdata_site_impression.ctr\",
        \"searchdata_site_impression.avg_site_position\"
    ],
    \"hide_legend\": false,
    \"series_types\": {},
    \"series_colors\": {
        \"searchdata_site_impression.dynamic_console_metric\": \"#2B99F7\",
        \"searchdata_site_impression.ctr\": \"#FC9200\"
    },
    \"series_labels\": {},
    \"swap_axes\": false,
    \"show_row_numbers\": true,
    \"transpose\": false,
    \"truncate_text\": false,
    \"hide_totals\": false,
    \"hide_row_totals\": false,
    \"size_to_fit\": true,
    \"table_theme\": \"white\",
    \"enable_conditional_formatting\": false,
    \"header_text_alignment\": \"left\",
    \"header_font_size\": \"15\",
    \"rows_font_size\": \"14\",
    \"conditional_formatting_include_totals\": false,
    \"conditional_formatting_include_nulls\": false,
    \"type\": \"looker_line\",
    \"show_sql_query_menu_options\": false,
    \"show_totals\": true,
    \"show_row_totals\": true,
    \"truncate_header\": false,
    \"minimum_column_width\": 75,
    \"hidden_fields\": [],
    \"hidden_points_if_no\": [],
    \"value_labels\": \"legend\",
    \"label_type\": \"labPer\",
    \"defaults_version\": 1,
    \"font_size_main\": \"\",
    \"orientation\": \"auto\",
    \"style_searchdata_site_impression.dynamic_console_metric\": \"#3A4245\",
    \"show_title_searchdata_site_impression.dynamic_console_metric\": true,
    \"title_placement_searchdata_site_impression.dynamic_console_metric\": \"above\",
    \"value_format_searchdata_site_impression.dynamic_console_metric\": \"\",
    \"style_searchdata_site_impression.total_impressions\": \"#3A4245\",
    \"show_title_searchdata_site_impression.total_impressions\": true,
    \"title_placement_searchdata_site_impression.total_impressions\": \"above\",
    \"value_format_searchdata_site_impression.total_impressions\": \"\",
    \"show_comparison_searchdata_site_impression.total_impressions\": false,
    \"style_searchdata_site_impression.ctr\": \"#3A4245\",
    \"show_title_searchdata_site_impression.ctr\": true,
    \"title_placement_searchdata_site_impression.ctr\": \"above\",
    \"value_format_searchdata_site_impression.ctr\": \"\",
    \"show_comparison_searchdata_site_impression.ctr\": false,
    \"style_searchdata_site_impression.avg_site_position\": \"#3A4245\",
    \"show_title_searchdata_site_impression.avg_site_position\": true,
    \"title_placement_searchdata_site_impression.avg_site_position\": \"above\",
    \"value_format_searchdata_site_impression.avg_site_position\": \"\",
    \"show_comparison_searchdata_site_impression.avg_site_position\": false,
    \"note_state\": \"collapsed\",
    \"note_display\": \"above\",
    \"note_text\": \"Explore Further: Modify Dashboard Filter to Display Diverse Segments \ud83d\udcca \u2b06\ufe0f\"
}' %}"
}
