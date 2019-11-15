class Task < ApplicationRecord
  has_many :comments

  validates :subject, presence: true
  validates :description, presence: true
  validates :assignee, presence: true
end
