# The ultimate pagination ruby gem. https://github.com/ddnexus/pagy
gem 'pagy'
initializer 'pagy.rb', <<-CODE
  Pagy::VARS[:items] = 10
CODE
