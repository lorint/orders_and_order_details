class OrdersController < ApplicationController
	def index
	  @orders = Order.all.order(:order_date)
	  @orders.each do |order|
	    order.line_items.build
	    order.line_items.build
	  end
	  @order = Order.new
	  @order.line_items.build
	  @order.line_items.build
	  @order.line_items.build
	end

	def create
	  order = Order.new(order_params)
	  if order.save
  	  redirect_to :orders_path
  	end
	end

	def update
		# We get the ID from the route
	  order = Order.find_by(id: params[:id])
	  if order.update(order_params)
  	  redirect_to :orders_path
  	end
	end

	def destroy
	  order = Order.find_by(id: params[:id])
	  if order.destroy
  	  redirect_to :orders_path
  	end
	end

	def order_params
	  params.require(:order).permit(:id, :order_date, :customer,
	    line_items_attributes: [:id, :product, :quantity])
	end
end
