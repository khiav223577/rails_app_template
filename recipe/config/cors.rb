environment <<-CODE
config.middleware.use Rack::Cors do
  allow do
    origins Settings.cors_origins
    resource '*',
             headers: :any,
             expose: %w[access-token expiry token-type uid client],
             methods: [:get, :post, :options, :delete, :put]
  end
end
CODE
update_yaml "config/settings.yml", "cors_origins" => ["*"]
