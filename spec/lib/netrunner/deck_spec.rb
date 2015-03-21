require 'netrunner/deck'

RSpec.describe Netrunner::Deck do
  describe '#draw' do
    it { is_expected.to respond_to(:draw) }
  end
end
