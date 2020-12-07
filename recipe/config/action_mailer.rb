environment <<-CODE
config.action_mailer.default_url_options = {
  host: Settings.mailer_server_host,
  port: Settings.mailer_server_port,
  protocol: Settings.mailer_server_protocol,
}
CODE
environment 'config.action_mailer.raise_delivery_errors = true'
environment 'config.action_mailer.delivery_method = :smtp'
environment <<-CODE
config.action_mailer.smtp_settings = {
  address: Settings.mailer_smtp_address,
  port: Settings.mailer_smtp_port,
  domain: Settings.mailer_smtp_domain,
  authentication: Settings.mailer_smtp_authentication,
  enable_starttls_auto: Settings.mailer_smtp_enable_starttls_auto,
  user_name: Settings.mailer_smtp_user_name,
  password: Settings.mailer_smtp_password,
}
CODE

update_yaml 'config/settings.yml',
            'mailer_from'                      => 'Support <support@mg.example.com>',
            'mailer_server_host'               => 'api.example.com',
            'mailer_server_port'               => '',
            'mailer_server_protocol'           => 'https',
            'mailer_smtp_address'              => 'smtp.mailgun.org',
            'mailer_smtp_port'                 => 587,
            'mailer_smtp_domain'               => 'mg.example.com',
            'mailer_smtp_authentication'       => 'plain',
            'mailer_smtp_enable_starttls_auto' => true,
            'mailer_smtp_user_name'            => 'postmaster@mg.example.com',
            'mailer_smtp_password'             => ''
