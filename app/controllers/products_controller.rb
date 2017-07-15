class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
       redirect_to '/', notice: 'Wahoo! Product successfully added'
    else
      render :new
    end
  end

  def update
        @product = Product.find(params[:id])
        if @product.update(product_params)
         redirect_to '/', notice: 'Wahoo! Product successfully updated'
        else
          flash[:alert] = "Oh snap! There was an error. Please try again."
        @products = Product.order()
          render :edit
        end

  def destroy
        @product = Product.find(params[:id])
        @product.destroy
      redirect_to '/', notice: 'Wahoo! Product successfully deleted'
      end

  def show
      @product = Product.find(params[:id])
       respond_to do |format|
        format.html
         format.js
       end
     end

     def edit
     @product = Product.find(params[:id])
   end

   def update
     @product = Product.find(params[:id])
     if @product.update(product_params)
       redirect_to '/'
     else
       flash[:alert] = "There was an error. Please try again."
       render :edit
     end
   end
 end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
