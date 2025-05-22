project_name: "search-console-synth"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
constant: SC_CONNECTION {
  value: "bq"
  export: override_required
}

constant: PROJECT_ID {
  value: "looker-marketplace"
  export: override_optional
}

constant: SC_SCHEMA {
  value: "SearchConsole"
  export: override_optional
}
