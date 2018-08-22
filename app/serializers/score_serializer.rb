class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :sumPoints, :room_id
end