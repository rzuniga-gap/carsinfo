class Brand
  include Mongoid::Document
  field :name, type: String

  has_many :cars
  has_many :brand_models
end
