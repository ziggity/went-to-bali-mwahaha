class AdminsController < ApplicationController
   before_action do
     redirect_to '/sign_in' unless current_user && current_user.admin
   end

   def index
     @products = Product.all
   end
 end
