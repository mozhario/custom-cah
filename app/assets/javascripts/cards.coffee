# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->

    $('.add-card').on "click", (e) ->
        e.preventDefault()
        
        type = $(this).attr("data-type")
        cards_container = $(".cards-#{type}")
        cards_container.append(
            "<textarea name='#{type}-cards[]' cols='30' rows='10' "+
            "class='card card-#{type}'></textarea>")

        $(".cards-#{type} .card").last().focus()
        return