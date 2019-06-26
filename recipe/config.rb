# Note: This recipe requires config gem.
init_gem "config"
init_gem "rack-cors"

update_yaml "config/settings.yml", "rails_max_threads" => 128

recipe "config/time_zone"
recipe "config/cors"
recipe "config/pg"
recipe "config/puma"
recipe "config/action_mailer"
