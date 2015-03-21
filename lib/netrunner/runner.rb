module Netrunner
  class Runner
    attr_reader :hand

    def initialize(heap: Netrunner::Heap.new)
      @heap = heap
      @hand = []
    end

    def draw_hand
      7.times do
        @hand << @heap.draw
      end
      @hand
    end
  end
end
