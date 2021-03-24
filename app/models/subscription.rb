class Subscription < ApplicationRecord
    belongs_to :user
	validates :date_start, presence: true
end
