class CategoriesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

   
    def index
        categories=Category.all 
        render json: categories
    end

    def show
        category= find_category
        render json:category
    end

    def create
        category=Category.create(category_params)
        render json:category
    end

    def update
        category= find_category
        category.update(category_params)
        render json:category
    end

    def destroy
        category= find_category
        category.destroy
        head :no_content
    end

    private

    def find_category
        Category.find(params[:id])
    end

    def category_params
        params.permit(:name)
    end

    def render_not_found_response
        render json: { error: "Bird not found" }, status: :not_found
    end
end
