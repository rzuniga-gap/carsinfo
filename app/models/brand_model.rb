class BrandModel
  include Mongoid::Document
  belongs_to :brand

  field :name, type: String
  field :brand_id, type: String
end
