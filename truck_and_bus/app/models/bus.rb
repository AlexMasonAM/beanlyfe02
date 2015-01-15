class Bus
  include Mongoid::Document
  field :school, type: String
  embeds_one :driver
  accepts_nested_attributes_for :driver
end
