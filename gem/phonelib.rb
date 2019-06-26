# Ruby gem for phone validation and formatting using google
# libphonenumber library data. https://github.com/daddyz/phonelib
gem "phonelib"
initializer "phonelib.rb", <<~CODE
  Phonelib.default_country = "TW"
CODE
