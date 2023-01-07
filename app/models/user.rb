class User < ApplicationRecord
  has_many :rooms, dependent: :destroy
  has_many :users, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
end
