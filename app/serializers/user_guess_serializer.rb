class UserGuessSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :room_id
end