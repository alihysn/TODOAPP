class User < ApplicationRecord
    has_many :lists, class_name: "List", foreign_key: "users_id"
end
