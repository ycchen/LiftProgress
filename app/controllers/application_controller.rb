class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session, if: ->{request.format.json?}
  # protect_from_forgery with: :null_session
end
