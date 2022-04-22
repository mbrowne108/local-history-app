class SiteSerializer < ActiveModel::Serializer
  attributes :id, :name, :lat, :long, :description
  has_many :users
  has_one :category
end
