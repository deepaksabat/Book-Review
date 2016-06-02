class CategoriesController < ApplicationController

	def index
		if params[:category].blank?
			@books = Book.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@books = Book.where(:category_id => @category_id).order("created_at DESC")
		end
	end

	def show
		@category = Category.find(params[:id])
	end

	def new
		@category = Category.new
	end

	def create
		 @category = Category.new(category_params)
		 if @category.save
		 	redirect_to @category
		 else
		 	render 'new'
		 end
	end
    
    private

    def category_params
    	params.require(:category).permit(:name)
    end

end
