# Define the database connection to be used for this model.
connection: "bq"

# include all the views
include: "/views/refined/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: search_console_model_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: search_console_model_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Search Console Model"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: export_log {}

explore: searchdata_site_impression {
  label: "Site Impression"
}

explore: searchdata_url_impression {
  label: "URL Impression"
}

explore: Impressions {
  from: searchdata_site_impression
  join: searchdata_url_impression {
    relationship: one_to_many
    sql_on: ${searchdata_url_impression.country} = ${Impressions.country} AND
            ${searchdata_url_impression.device} = ${Impressions.device} AND
            ${searchdata_url_impression.search_type} = ${Impressions.search_type} AND
            ${searchdata_url_impression.data_date} = ${Impressions.data_date} AND
            ${searchdata_url_impression.site_url} = ${Impressions.site_url} AND
            ${searchdata_url_impression.query} = ${Impressions.query} ;;
  }
}
