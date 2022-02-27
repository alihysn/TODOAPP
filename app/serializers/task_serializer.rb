class TaskSerializer < ActiveModel::Serializer
  attributes :id,:lists_id, :description, :status
end
