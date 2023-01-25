class GraphSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :nodes
  has_many :links
end
