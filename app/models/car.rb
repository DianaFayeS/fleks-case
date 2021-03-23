class Car < ApplicationRecord
    has_one_attached :photo

    belongs_to :user
    has_many :subscriptions
    validates :user, :subscription, :reg_nr, :model, :year, :decription, presence: true

end
