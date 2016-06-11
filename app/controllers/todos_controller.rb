class TodosController < ApplicationController
	def index
		@todos = Todo.all
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params)
		if @todo.save
			redirect_to root_url, notice: "New to-do item created."
		end
	end	

	def show
		@todo = Todo.find(params[:id])
	end

	def edit
		@todo = Todo.find(params[:id])
	end

	def update
		@todo = Todo.find(params[:id])
		if @todo.update_attributes(todo_params)
			redirect_to root_url, notice: "To-do item updated."
		end
	end

	def destroy
		@todo = Todo.find(params[:id]).delete
		redirect_to root_url, notice: "To-do item deleted."
	end

	private
		def todo_params
			params.require(:todo).permit(:title, :notes)
		end
end
