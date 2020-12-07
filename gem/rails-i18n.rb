require 'open-uri'

# Repository for collecting Locale data for Ruby on Rails I18n as well
# as other interesting, Rails related I18n stuff http://rails-i18n.org
gem 'rails-i18n'
environment 'config.i18n.default_locale = "zh-TW"'
environment 'config.i18n.available_locales = ["zh-TW", "en"]'
file 'config/locales/zh-TW.yml', open('https://github.com/svenfuchs/rails-i18n/raw/master/rails/locale/zh-TW.yml').read
