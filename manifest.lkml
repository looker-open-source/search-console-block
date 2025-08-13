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
