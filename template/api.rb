$args = ARGV.join(' ').scan(/--?([^=\s]+)\s*(?:=?([^\s-]+))?/).to_h

require_relative "../lib/base"

init_gem "zaru"
init_gem "aasm"
init_gem "pagy"
init_gem "redis"
init_gem "redis-objects"
init_gem "rails-erd"
init_gem "rubocop"
init_gem "brypt"
init_gem "benchmark-ips"
# init_gem "rails-i18n"
recipe "rspec"
recipe "config"
recipe "action_storage"
# recipe "google-cloud-storage"

run "bundle install"
