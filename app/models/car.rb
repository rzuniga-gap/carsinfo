class Car
  include Mongoid::Document
  belongs_to :brand
  belongs_to :brand_model


  field :title, type: String
  field :brand_model_id, type: String
  field :year, type: Integer
  field :price, type: Float
  field :release_date, type: Date
end
