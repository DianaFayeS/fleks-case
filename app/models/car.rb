class Car < ApplicationRecord
    has_one_attached :photo

    #belongs_to :user
    has_many :subscriptions
    validates :reg_nr, :model, :year, :description, presence: true

end
