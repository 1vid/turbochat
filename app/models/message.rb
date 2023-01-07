class Message < ApplicationRecord
  has_many :likes, dependent: :destroy
  belongs_to :user
  belongs_to :room

  scope :sorted, -> { order(:id) }
  validates :bodt, presence: true 
end
