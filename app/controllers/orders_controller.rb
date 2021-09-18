class OrdersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

   
    def index
        if params[:user_id]
            user=User.find(params[:user_id])
            orders=user.orders
        else
            orders=Order.all
        end         
        render json: orders.order(id: :desc)
    end

    def show
        order= find_order
        render json:order
    end

    def create
        order=Order.create!(order_params)
        render json:order
    end

    def update
        order= find_order
        order.update!(order_params)
        render json:order
    end

    def destroy
        order= find_order
        order.destroy
        head :no_content
    end

    private

    def find_order
        Order.find(params[:id])
    end

    def order_params
        params.permit(:user_id, :paid)
    end

    def render_not_found_response
        render json: { error: "Order not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
