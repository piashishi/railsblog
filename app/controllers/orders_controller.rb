class OrdersController < ApplicationController
	def index
		@orders = Order.find(current_user.name)
	end

	def create
		logger.debug("Create Order")
		@order = Order.new(OrderID: 7788, number:10, price:120,date: DateTime.current)
		if @order.save()
			logger.debug "save success"
		else
			logger.debug "ERROR"
		end
		redirect_to orders_path
	end

	def destroy
		logger.debug "delete order"
		Order.find(params[:id]).destroy
     	flash[:success] = "Order deleted"
     	redirect_to orders_path
	end
end
