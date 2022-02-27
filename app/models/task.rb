class Task < ApplicationRecord
  belongs_to :lists, foreign_key: "lists_id", class_name: "List"
end
