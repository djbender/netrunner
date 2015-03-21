require 'netrunner/cli'

RSpec.describe Netrunner::CLI do
  before do
    @old_stderr = $stderr
    $stderr = StringIO.new
    @old_stdout = $stdout
    $stdout = StringIO.new
  end

  describe '#play' do
    it 'draws starting hands' do
      subject.play
      expect($stdout.string).to eq <<-EOS
        Drawing Runner's starting hand:
        1.
        2.
        3.
        4.
        5.
        6.
        7.

        Drawing Corp's stargin hand:
        1.
        2.
        3.
        4.
        5.
        6.
        7.
      EOS
    end
  end

  after do
    $stderr = @old_stderr
    $stdout = @old_stdout
  end
end
