init_gem 'rspec-rails'
init_gem 'spring-commands-rspec'
init_gem 'timecop'
init_gem 'shoulda-matchers'
init_gem 'database_cleaner'
init_gem 'simplecov'
init_gem 'factory_bot_rails'
init_gem 'fakeredis'

lines = File.readlines('spec/rails_helper.rb')
start = lines.index{|s| s =~ /Add additional requires below this line. Rails is not loaded until this point!/ } || 9
Dir[File.join(recipe_path, 'rspec/support/*')].each do |f|
  lib_name = File.basename(f, '.rb')
  file "spec/support/#{lib_name}.rb", File.read(f)
  lines.insert(start += 1, "require 'support/#{lib_name}'\n")
end

lines.unshift "require 'simplecov'\n",
              "SimpleCov.start\n"

File.open('spec/rails_helper.rb', 'w') do |f|
  f.write(lines.join)
  f.flush
end
