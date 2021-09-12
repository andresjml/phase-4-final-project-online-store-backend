class OrdersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

   
    def index
        orders=Order.all 
        render json: orders
    end

    def show
        order= find_order
        render json:order
    end

    def create
        order=Order.create(order_params)
        render json:order
    end

    def update
        order= find_order
        order.update(order_params)
        render json:order
    end

    def destroy
        order= Order.find(params[:id])
        order.destroy
        head :no_content
    end

    private

    def find_order
        Order.find(params[:id])
    end

    def order_params
        params.permit(:user_id, :paid?)
    end

    def render_not_found_response
        render json: { error: "Order not found" }, status: :not_found
    end
end
