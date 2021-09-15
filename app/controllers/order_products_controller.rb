class OrderProductsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

   
    def index
        order_products=OrderProduct.all 
        render json: order_products
    end

    def show
        order_product= find_order_product
        render json:order_product
    end

    def create
        order_product=OrderProduct.find_or_create_by!(order_product_params)
        render json:order_product
    end

    def update
        order_product= find_order_product
        order_product.update!(order_product_params)
        render json:order_product
    end

    def destroy
        order_product= find_order_product
        order_product.destroy
        head :no_content
    end

    private

    def find_order_product
        OrderProduct.find(params[:id])
    end

    def order_product_params
        params.permit(:order_id, :product_id, :product_qty)
    end

    def render_not_found_response
        render json: { error: "Order_product not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
