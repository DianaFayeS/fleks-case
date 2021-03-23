json.extract! subscription, :id, :date_start, :date_end, :user, :car, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
