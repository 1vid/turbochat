class Room < ApplicationRecord
  has_many :mesagges, -> { sorted }, dependent: :destroy
  belongs_to :user
  before_create { self.title = SecureRandom.hex(3)}
end
