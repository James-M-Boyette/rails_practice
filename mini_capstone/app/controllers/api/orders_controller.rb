class Api::OrdersController < ApplicationController
  def create
    # render json: { message: "create an order" }
    @order = Order.new (
      product_id: 1,
      user_id: 1,
      quantity: 2,
      subtotal: 20,
      tax: .09,
      total: 120,
      )
      @Order.save
      render 'order.json.jb'
  end
end
