class Bean
  include Mongoid::Document
  field :name, type: String
  field :roast, type: String
  field :origin, type: String
  field :year_roasted, type: Integer
  field :quantity, type: Float
end
