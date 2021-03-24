  # rubocop:disable Style/Documentation
class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: :index

  # GET /subscriptions or /subscriptions.json
  def index
    @subscriptions = Subscription.all
  end

  # GET /subscriptions/1 or /subscriptions/1.json
  def show 
  end

  # GET /subscriptions/new
  def new
    @car = Car.find(params[:car_id])
    @subscription = Subscription.new
  end

  # GET /subscriptions/1/edit
  def edit
  end

  # POST /subscriptions or /subscriptions.json
  def create
    @car = Car.find(params[:car_id])
    @subscription = Subscription.new(subscription_params)
    @subscription.user = current_user
    @subscription.car_id = params[:car_id]
    if @subscription.save
      redirect_to user_subscriptions_path
    else
      render :new
    end
  end

  # PATCH/PUT /subscriptions/1 or /subscriptions/1.json
  def update
    respond_to do |format|
      if @subscription.update(subscription_params)
        format.html { redirect_to @subscription, notice: "Subscription was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscriptions/1 or /subscriptions/1.json
  def destroy
    @subscription.destroy
    respond_to do |format|
      format.html { redirect_to subscriptions_url, notice: "Subscription was successfully destroyed." }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_subscription
    @subscription = Subscription.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def subscription_params
    params.require(:subscription).permit(:date_start, :date_end, :user, :car_id )
  end
end
