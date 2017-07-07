class CardsController < ApplicationController
    before_action :require_authentication, except: :index

    def require_authentication
        authenticate_or_request_with_http_basic do |u,p|
            user = User.find_by(username: u)
            true if user && user.authenticate(p)
        end
    end
end
