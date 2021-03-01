require 'test_helper'

class LogoutControllerTest < ActionDispatch::IntegrationTest
  test "logout the user" do
  	get logout_url
    assert true
  end
end
