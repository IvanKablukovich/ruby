class User < ApplicationRecord
  has_many :exercises

  devise :database_authenticatable, :registerable, :validatable
end
