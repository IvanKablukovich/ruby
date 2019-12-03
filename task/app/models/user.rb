class User < ApplicationRecord
  has_many :tasks


  devise :database_authenticatable, :registerable, :validatable

  def admin?
    flag
  end
end
