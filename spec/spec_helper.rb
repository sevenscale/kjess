if RUBY_VERSION >= '1.9.2' then
  require 'simplecov'
  puts "Using coverage!"
  SimpleCov.start if ENV['COVERAGE']
end

gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'kjess'

# namespace for spec classes
module KJess::Spec
end
