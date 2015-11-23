core = 7.x
api = 2

; Modules
projects[admin_menu][subdir] = "contrib"
projects[admin_menu][version] = "3.0-rc5"

projects[admin_views][subdir] = "contrib"
projects[admin_views][version] = "1.5"

projects[ctools][subdir] = "contrib"
projects[ctools][version] = "1.9"

projects[date][subdir] = "contrib"
projects[date][version] = "2.9"

projects[diff][subdir] = "contrib"
projects[diff][version] = "3.2"

projects[entity][subdir] = "contrib"
projects[entity][version] = "1.6"
projects[entity][patch][] = "https://www.drupal.org/files/issues/2086225-entity-access-check-node-create-3.patch"

projects[entitycache][subdir] = "contrib"
projects[entitycache][version] = 1.2

projects[entityreference][subdir] = "contrib"
projects[entityreference][version] = "1.1"
projects[entityreference][patch][] = "https://www.drupal.org/files/issues/migrate_multiple_entity_reference-2394725-4.patch"

projects[entity_validator][subdir] = "contrib"
projects[entity_validator][version] = "1.x"

projects[features][subdir] = "contrib"
projects[features][version] = "2.7"

projects[flag][subdir] = "contrib"
projects[flag][version] = "3.7"

projects[module_filter][subdir] = "contrib"
projects[module_filter][version] = 2.0

projects[restful][subdir] = "contrib"
projects[restful][version] = "1.x-dev"

projects[strongarm][subdir] = "contrib"
projects[strongarm][version] = "2.0"

projects[views][subdir] = "contrib"
projects[views][version] = "3.13"

projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][version] = "3.3"

; Development
projects[devel][subdir] = "development"
projects[devel][version] = "1.5"

projects[migrate][subdir] = "development"
projects[migrate][version] = "2.8"

projects[migrate_extras][subdir] = "development"
projects[migrate_extras][version] = 2.5
