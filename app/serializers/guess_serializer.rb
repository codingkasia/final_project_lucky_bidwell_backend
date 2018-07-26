class GuessSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :value, :color, :lucky
end
