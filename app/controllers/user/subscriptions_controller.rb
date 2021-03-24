class User::SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.where(user: current_user.id)
    @cars = Car.all
  end
end
