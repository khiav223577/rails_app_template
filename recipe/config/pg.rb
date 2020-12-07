orig_db_config = YAML.load_file('config/database.yml')
db_prefix = File.basename(orig_db_config['development']['database'], '_development')

run 'rm config/database.yml'
file 'config/database.yml', <<CODE
---
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= Settings.rails_max_threads %>
  user: <%= Settings.pg_user %>
  host: <%= Settings.pg_host %>
  port: <%= Settings.pg_port %>
  password: <%= Settings.pg_password %>
development:
  <<: *default
  database: <%= Settings.pg_db_prefix + "_development" %>
test:
  <<: *default
  database: <%= Settings.pg_db_prefix + "_test" %>
production:
  <<: *default
  database: <%= Settings.pg_db_prefix + "_production" %>
CODE

update_yaml 'config/settings.yml',
            'pg_db_prefix' => db_prefix,
            'pg_user'      => 'postgres',
            'pg_host'      => 'localhost',
            'pg_port'      => 5432,
            'pg_password'  => ''
