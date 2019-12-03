class Comment < ApplicationRecord
  belongs_to :task

  validates :username, presence: true
  validates :field, presence: true
end
