
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
SimpleCov.start do
  add_group 'Controllers', 'app/controllers'
  add_group 'Controllers', 'app/admin/controllers'
  add_group 'Models', 'app/models'
end
RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.before(:suite) do
    DatabaseCleaner[:active_record].strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end
  config.before(:each) do
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
