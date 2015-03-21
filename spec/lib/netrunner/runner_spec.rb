require 'netrunner/runner'
require 'netrunner/heap'
require 'netrunner/card'

RSpec.describe Netrunner::Runner do
  context '#draw_hand' do
    subject { Netrunner::Runner.new(heap: heap) }
    let(:heap) { instance_double Netrunner::Heap, draw: card }
    let(:card) { instance_double Netrunner::Card }
    it "places 7 cards into the runner's hand" do
      expect { subject.draw_hand }.to change { subject.hand.size }.from(0).to(7)
    end
  end
end
