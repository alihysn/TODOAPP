class List < ApplicationRecord
  belongs_to :user, foreign_key: "users_id", class_name: "User"
  has_many :tasks
end
