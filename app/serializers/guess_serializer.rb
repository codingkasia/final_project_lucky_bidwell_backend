class GuessSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :value, :color, :lucky, :user_ids, :found
end
