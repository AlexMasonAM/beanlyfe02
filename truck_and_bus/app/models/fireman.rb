class Fireman
  include Mongoid::Document
  field :name, type: String
  belongs_to :firetruck

end
