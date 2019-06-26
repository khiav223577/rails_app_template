# Code coverage for Ruby 1.9+ with a powerful configuration library
# and automatic merging of coverage across test suites
# https://github.com/colszowka/simplecov
gem "simplecov", require: false, group: :test

run "echo \"# Ignore simplecov's output directory.\" >>.gitignore"
run "echo '/coverage/' >>.gitignore"
