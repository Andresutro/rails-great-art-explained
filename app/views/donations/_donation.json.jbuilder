json.extract! donation, :id, :amount, :message, :user_id, :created_at, :updated_at
json.url donation_url(donation, format: :json)
