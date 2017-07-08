class CardsController < ApplicationController
    before_action :require_authentication, only: :cards_list

    def require_authentication
        authenticate_or_request_with_http_basic do |u,p|
            true if u==ENV['ADMIN_USERNAME'] && p==ENV['ADMIN_PASS']
        end
    end
end
