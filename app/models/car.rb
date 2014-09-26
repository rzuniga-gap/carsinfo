class Car
  include Mongoid::Document
  belongs_to :brand
  field :brand_model_name, type: String
  field :year, type: Integer
  field :release_date, type: Date
end
