require_relative '../../../lib/netrunner/deck'

RSpec.describe Netrunner::Deck do
  subject(:deck) { Netrunner::Deck.new }

  context "#add" do
    it "stores your cards" do
      card = double("Card")
      expect(deck.add(card)).to eq [card]
    end
  end
end
