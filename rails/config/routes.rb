Rails.application.routes.draw do
  get 'static/landing'
  get 'static/graph'
  get 'bpel' => 'static#bpel'
  get 'report' => 'static#report'

  resources :financial_events
  resources :branches
  resources :order_items
  resources :orders
  resources :customers
  resources :products
  resources :product_categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static#landing'
end
