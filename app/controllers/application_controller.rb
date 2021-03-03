# :nocov:
class ApplicationController < ActionController::Base
skip_before_action :verify_authenticity_token

 protect_from_forgery prepend: true
  before_action :authenticate_user!


end
# :nocov: