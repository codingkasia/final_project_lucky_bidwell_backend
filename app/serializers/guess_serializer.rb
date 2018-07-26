class GuessSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :user_id, :value, :color, :lucky
end
