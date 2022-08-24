class AuthorsController < ApplicationController
	 before_action :set_author, only: %i[show edit update destroy]

	def index
		@authors  = Author.all
		@books = Book.all
	end

	def new
		@author = Author.new
		@books = Book.all
	end

	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to authors_path, notice: 'Author has been created successfully'
		else
			render :new
		end
	end

	def show
		@books = Book.all
	end

	def edit
	end

	def update
		if @author.update(author_params)
			redirect_to authors_path, notice: 'Author has been updated successfully'
		else
			render :edit
		end
	end

	def destroy
		@author.destroy
		redirect_to authors_path, notice: 'Author has been deleted successfully'
	end



	private


	def author_params
		params.require(:author).permit(:first_name, :last_name, :date_of_birth)
	end

	def set_author
		@author = Author.find(params[:id])
	end

end
