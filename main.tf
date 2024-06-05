# # Enable Cloud SQL Admin API
# resource "google_project_service" "sqladmin" {
#   service = "sqladmin.googleapis.com"
#   project = var.project_id
# }

# resource "google_sql_database" "database" {
#   name     = "my-database"
#   instance = google_sql_database_instance.mysql.name
# }


# resource "google_sql_database_instance" "mysql" {
#   name             = var.db_instance_name
#   database_version = var.db_version
#   region           = var.region
#   project          = var.project_id

#   settings {
#     tier = "db-f1-micro"
#   }
#   deletion_protection  = "false"
# }

# resource "google_sql_user" "mysql" {
#   name     = var.db_user
#   instance = google_sql_database_instance.mysql.name
#   password = var.db_password
# }