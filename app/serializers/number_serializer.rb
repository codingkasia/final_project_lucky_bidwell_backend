class NumberSerializer < ActiveModel::Serializer
  attributes :id, :number, :room_id
end