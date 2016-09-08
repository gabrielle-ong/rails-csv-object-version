class ObjectRecord
  include Mongoid::Document

  validates_presence_of :object_id, :object_type, :timestamp, :object_changes
  
  field :object_id, type: Integer
  field :object_type, type: String
  field :timestamp, type: DateTime
  field :object_changes, type: Hash
end
