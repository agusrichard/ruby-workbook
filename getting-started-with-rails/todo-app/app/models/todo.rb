class Todo < ApplicationRecord
  validates :title, presence: true
  validates :time, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
