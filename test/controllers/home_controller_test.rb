require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  setup do 
  	user = users(:user_1)
    get '/users/sign_in'
    sign_in(user)
    
    post user_session_url
  end

  test "should get index" do
    get home_index_url
    assert_response :success
  end

end
