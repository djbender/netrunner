require 'netrunner/card'

RSpec.describe Netrunner::Card do
  context 'required attributes are indeed, required.' do
    Netrunner::Card::REQUIRED_ATTRIBUTES.each do |attr|
      it { is_expected.to validate_presence_of attr }
    end
  end
end
