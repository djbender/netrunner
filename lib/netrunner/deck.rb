require 'algorithms'

module Netrunner
  class Deck < Containers::Stack
    alias_method :draw, :pop
  end
end
