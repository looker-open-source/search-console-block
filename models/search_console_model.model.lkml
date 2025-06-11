# Define the database connection to be used for this model.
connection: "bq"

include: "/explores/**.explore"
include: "/views/refined/**.view.lkml"

datagroup: search_console_model_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: search_console_model_default_datagroup


explore: export_log {}

explore: searchdata_site_impression {
  label: "Site Impression"
}

explore: searchdata_url_impression {
  label: "URL Impression"
}
