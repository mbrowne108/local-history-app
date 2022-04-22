class VisitSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment
  has_one :user
  has_one :site
end
