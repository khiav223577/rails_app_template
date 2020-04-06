if RUBY_PLATFORM =~ /darwin/
  run "sed -i '' 's/ENV.fetch(\"RAILS_MAX_THREADS\") { 5 }/Settings.rails_max_threads/' config/puma.rb"
else
  run "sed -i 's/ENV.fetch(\"RAILS_MAX_THREADS\") { 5 }/Settings.rails_max_threads/' config/puma.rb"
end
