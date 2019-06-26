eval_gem "rspec-rails"
eval_gem "spring-commands-rspec"
eval_gem "timecop"
eval_gem "shoulda-matchers"
eval_gem "database_cleaner"
eval_gem "simplecov"
eval_gem "factory_bot_rails"

start = 8
lines = File.readlines("spec/rails_helper.rb")
Dir[File.join(recipe_path, "rspec/support/*")].each do |f|
  lib_name = File.basename(f, ".rb")
  file "spec/support/#{lib_name}.rb", File.read(f)
  lines.insert(start, "require \"support/#{lib_name}\"\n")
  start += 1
end

lines.unshift "require \"simplecov\"\n",
              "SimpleCov.start\n"

File.open("spec/rails_helper.rb", "w") do |f|
  f.write(lines.join)
  f.flush
end
