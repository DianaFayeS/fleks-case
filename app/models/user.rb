class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :subscriptions, dependent: :destroy
  has_many :cars, dependent: :destroy

  validates :email, format: { with: /\A.*@.*\.com\z/ }
end
