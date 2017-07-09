class CardsController < ApplicationController
    before_action :require_authentication, only: :cards_list

    def require_authentication
        authenticate_or_request_with_http_basic do |u,p|
            true if u==ENV['ADMIN_USERNAME'] && p==ENV['ADMIN_PASS']
        end
    end

    def index
        # params.each do |key,value|
        #     Rails.logger.warn "Param #{key}: #{value}"
        # end
        
        white_cards = params["white-cards"]
        black_cards = params["black-cards"]

        if white_cards
            white_cards.each do |text|
                unless text.strip.empty? 
                    card = Card.create(text: text, card_type: "white")
                end
            end
        end

        if white_cards
            black_cards.each do |text|
                unless text.strip.empty? 
                    card = Card.create(text: text, card_type: "black")
                end
            end
        end
    end
end
