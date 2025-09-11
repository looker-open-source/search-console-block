# Define the database connection to be used for this model.
connection: "@{SC_CONNECTION}"

include: "/explores/**.explore"
include: "/views/refined/**.view.lkml"
include: "/dashboards/*.dashboard"

datagroup: search_console_model_default_datagroup {
  max_cache_age: "1 hour"
}

datagroup: export_log {
  sql_trigger: SELECT MAX(data_date) FROM  `@{PROJECT_ID}.@{SC_SCHEMA}.ExportLog`  ;;
  max_cache_age: "24 hour"
}

persist_with: search_console_model_default_datagroup


explore: export_log {
  hidden: yes
}

explore: searchdata_site_impression {
  label: "Site Impression"
  persist_with: export_log
}

explore: searchdata_url_impression {
  label: "URL Impression"
  persist_with: export_log
}

explore: navigation_bar {
  hidden: yes
  persist_for: "0 seconds"
}
