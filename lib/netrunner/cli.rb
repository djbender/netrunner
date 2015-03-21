require 'thor'
require 'netrunner/runner'
require 'netrunner/corp'
require 'netrunner/printer'

module Netrunner
  class CLI < Thor
    def initialize
      @runner = Netrunner::Runner.new
      @corp = Netrunner::Corp.new
      @output = Netrunner::Printer.new(STDOUT)
    end

    def play
      @runner.draw_hand
      @output.print_hand(@runner)
      @corp.draw_hand
      @output.pring_hand(@corp)
    end
  end
end
