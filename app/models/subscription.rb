class Subscription < ApplicationRecord
    belongs_to :user
    belongs_to :car

    validates :date_start, presence: true

end
