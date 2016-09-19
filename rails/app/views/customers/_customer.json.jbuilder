json.extract! customer, :id, :name, :billing_address, :shipping_address, :created_at, :updated_at
json.url customer_url(customer, format: :json)