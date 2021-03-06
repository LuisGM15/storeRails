class ProductsController < ApplicationController
    before_action :authenticate_user!
    def index
        @products = Product.all
    end

    def new
        @product = Product.new
        @cats = Category.all
    end
    
    def create
        @product = Product.new(product_params)
        
        if @product.save
            redirect_to products_path
        else
            render :new
        end
    end

    def edit
        @product = Product.find(params[:id])
        @cats = Category.all
    end

    def update
        @product = Product.find(params[:id])
            if @product.update(product_params)
                redirect_to products_path
            else
                render :edit
            end
    end

    def delete
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path
    end

    private
        def product_params
            params.require(:product).permit(:name, :description, :price, :category_id, :avatar)
        end
end
