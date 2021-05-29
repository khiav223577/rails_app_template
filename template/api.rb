$args = ARGV.join(' ').scan(/--?([^=\s]+)\s*(?:=?([^\s-]+))?/).to_h

def source_paths
  [*super, __dir__]
end

require_relative '../lib/base'

remove_file '.gitignore'
copy_file 'files/.gitignore_template', '.gitignore'

environment 'config.active_job.queue_adapter = :test', env: 'test'

init_gem 'zaru'
init_gem 'aasm'
init_gem 'pagy'
init_gem 'redis'
init_gem 'redis-objects'
init_gem 'rails-erd'
init_gem 'rubocop'
init_gem 'brypt'
init_gem 'benchmark-ips'
# init_gem "rails-i18n"
recipe 'rspec'
recipe 'config'
recipe 'action_storage'
# recipe "google-cloud-storage"

run 'bundle install'
