module Netrunner
  class Deck

    def initialize(deck = [])
      @deck = deck
    end

    def add(card)
      @deck << card
    end
  end
end
