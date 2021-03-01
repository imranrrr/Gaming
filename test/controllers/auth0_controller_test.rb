require 'test_helper'

class Auth0ControllerTest < ActionDispatch::IntegrationTest
  
  test "test cases for callback" do
    get '/auth/auth0/callback'
    byebug
    assert_response :redirect
  end

  test "test cases for failure" do 
  	get auth_failure_url
  	assert true
  end

end
