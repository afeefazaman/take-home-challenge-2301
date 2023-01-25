class LinkSerializer < ActiveModel::Serializer
  attributes :id, :graph_id, :source_id, :target_id

  belongs_to :graph
  belongs_to :source
  belongs_to :target
end
