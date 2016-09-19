class FinancialEvent < ApplicationRecord
  belongs_to :branch
  belongs_to :customer
end
