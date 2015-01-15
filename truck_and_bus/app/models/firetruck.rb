class Firetruck
  include Mongoid::Document
  field :engine_house, type: String
  has_many :firemen
end
