class Api::OrdersController < ApplicationController
  def index
    @hi = "hi"
  end

  def create
    @order = Order.new(
      {
        user_id: params["user_id"],
        product_id: params["product_id"],
        quantity: params["quantity"],
        subtotal: params["subtotal"],
        tax: params["tax"],
        total: params["total"],

      }
    )
    @order.save
    @order.subtotal = Product.find_by(id: @order.product_id).price
    @order.subtotal *= @order.quantity.to_i
    @order.tax = @order.subtotal * 0.09
    @order.total = @order.subtotal + @order.tax
    render "show.json.jb"
  end
end
