class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @category = Category.new
    3.times { @list = @category.lists.new }
  end
  
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
    else
      @categories = Category.all
      render 'index'
    end
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to root_path
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to root_path
  end
  
  private
    def category_params
      params.require(:category).permit(:name, lists_attributes: [:id, :content, :_destroy])
    end
end
