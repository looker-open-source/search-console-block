include: "/views/refined/*.view.lkml"

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
