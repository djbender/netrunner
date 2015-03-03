require 'active_model'

module Netrunner
  class Card
    include ActiveModel::Validations
    include ActiveModel::Model

    REQUIRED_ATTRIBUTES = %i|id name identity link deck influence flavor_text|

    REQUIRED_ATTRIBUTES.each do |attr|
      attr_accessor attr
      validates attr, presence: true
    end
  end
end
