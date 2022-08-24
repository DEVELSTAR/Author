class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

	def index
		@books = Book.all
		@authors = Author.all
	end


	def new
		@book = Book.new
		@authors = Author.all
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to books_path, notice: 'Book has been created successfully'
		else
			render :new
		end
		@authors = Author.all
	end

	def show
		@authors = Author.all

	end

	def edit
	end

	def update
		if @book.update(book_params)
			redirect_to books_path, notice: 'Book has been updated successfully'
		else
			render :edit
		end
	end

	def destroy
		@book.destroy
		redirect_to books_path, notice: 'Book has been deleted successfully'
	end



	private


	def book_params
		params.require(:book).permit(:title)
	end

	def set_book
		@book = Book.find(params[:id])
	end

end