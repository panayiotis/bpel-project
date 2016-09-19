xml.instruct!
xml.order do
  xml.id @order.id
  xml.from @order.branch.address if @order.branch
  xml.to @order.customer.shipping_address
  xml.order_items do
    @order.order_items.each do |i|
      xml.order_item do
         xml.price i.product.price
         xml.quantity i.quantity
         xml.name i.product.name
         xml.preparation_time i.product.preparation_time
      end
    end
  end
end
