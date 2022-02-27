class ListSerializer < ActiveModel::Serializer
  attributes :id, :users_id, :description, :status
end
