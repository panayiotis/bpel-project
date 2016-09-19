json.extract! order, :id, :branch_id, :customer_id, :cost, :status, :created_at, :updated_at
json.url order_url(order, format: :json)