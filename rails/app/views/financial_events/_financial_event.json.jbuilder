json.extract! financial_event, :id, :branch_id, :customer_id, :type, :amount, :created_at, :updated_at
json.url financial_event_url(financial_event, format: :json)