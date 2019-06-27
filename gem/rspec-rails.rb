gem "rspec-rails", group: [:development, :test]
run "bundle install"
run "rails g rspec:install"
environment <<-CODE
config.generators do |g|
  g.test_framework :rspec,
                   fixtures: true,
                   view_specs: false,
                   helper_specs: true,
                   routing_specs: false,
                   controller_specs: false,
                   request_specs: true
end
CODE
