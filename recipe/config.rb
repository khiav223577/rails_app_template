# Note: This recipe requires config gem.
eval_gem "config"
eval_gem "rack-cors"

update_yaml "config/settings.yml", "rails_max_threads" => 128

eval_recipe "config/time_zone"
eval_recipe "config/cors"
eval_recipe "config/pg"
eval_recipe "config/puma"
eval_recipe "config/action_mailer"
