class GuessSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :value, :bgColor, :lucky, :user_ids, :found, :temp
end
