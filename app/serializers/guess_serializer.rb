class GuessSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :value, :user_ids
end
