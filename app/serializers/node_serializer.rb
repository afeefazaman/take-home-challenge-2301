class NodeSerializer < ActiveModel::Serializer
  attributes :id, :name, :graph_id, :node_type_id

  belongs_to :graph
  belongs_to :node_type
  has_many :outgoing_links
  has_many :incoming_links
  has_many :target_nodes
  has_many :source_nodes
end
