require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  include Devise::Test::IntegrationHelpers
  
  setup do
    @password = "password"
    @confirmed_user = User.create(email: "abs@example.com", 
                                  password: @password, 
                                  password_confirmation: @password)

  end
  
  test "should get index" do
    user = User.create(
     email: 'test@example.com', 
    password: 'password123',
    password_confirmation: 'password123'
  	)
  	assert user.valid?
  end
end
