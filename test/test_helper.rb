require 'simplecov'
SimpleCov.start 'rails' do 
  add_filter "/app/models/user.rb"
end
Rails.application.eager_load!

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: 1)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def sign_in(user_1)
    post user_session_path \
      'user[email]'    => user.email,
      'user[password]' => user.password
  end
  # Add more helper methods to be used by all tests here...
end
