class Car < ApplicationRecord
  has_one_attached :photo

  has_many :subscriptions
  validates :reg_nr, :model, :year, :description, presence: true
end
