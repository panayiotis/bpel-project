# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

panos  = Customer.create name: 'panos',  billing_address: 'Piraeus', shipping_address: 'Piraeus'
bill   = Customer.create name: 'bill',   billing_address: 'Piraeus', shipping_address: 'Piraeus'
george = Customer.create name: 'george', billing_address: 'Piraeus', shipping_address: 'Piraeus'

souvlakia = ProductCategory.create name: 'pitogyra', description: 'fresh pitogyra'

Product.create name: 'giro ap ola',         product_category: souvlakia, price: 0.1, preparation_time: 1
Product.create name: 'giro xoris kremidi',  product_category: souvlakia, price: 0.2, preparation_time: 2
Product.create name: 'giro xoris tzatziki', product_category: souvlakia, price: 0.3, preparation_time: 3

piraeus = Branch.create address: 'Piraeus'
athens = Branch.create address: 'Αthens'
thessaloniki = Branch.create address: 'Thessaloniki'

order1 = Order.create branch: thessaloniki, customer: Customer.first
order2 = Order.create branch: athens, customer: Customer.first
order3 = Order.create branch: piraeus, customer: Customer.first

Product.all.each do |p|
  OrderItem.create order: order1, product: p, quantity: p.id
  OrderItem.create order: order2, product: p, quantity: p.id
  OrderItem.create order: order3, product: p, quantity: p.id
end



