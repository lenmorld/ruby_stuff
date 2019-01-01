class ApplicationController < ActionController::Base

    # disable CSRF middleware
    protect_from_forgery with: :null_session
end
