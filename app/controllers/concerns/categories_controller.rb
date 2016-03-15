class CategoriesController < ApplicationController

  def index
  	@categories = Category.all
  	@materials_share = @categories[0]
  	@for_sale = @categories[1]
  	@tool_rental = @categories[2]
  end
  
  def show
  	@listings = Listing.where(category_id: params[:id])
  	@category = Category.find(params[:id])
  end
  
end