class ProductsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

   
    def index
        products=Product.all 
        render json: products
    end

    def show
        product= find_product
        render json:product
    end

    def create
        product=Product.create!(product_params)
        render json:product
    end

    def update
        product= find_product
        product.update!(product_params)
        render json:product
    end

    def destroy
        product= find_product
        product.destroy
        head :no_content
    end

    private

    def find_product
        Product.find(params[:id])
    end

    def product_params
        params.permit(:name, :description, :price, :on_hand, :img_url, :category_id)
    end

    def render_not_found_response
        render json: { error: "Product not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
