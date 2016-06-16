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
			flash[:success] = "Todo was successfully created."
			redirect_to root_url
		else
			flash[:alert] = 'There was a problem creating the Todo.'
			render :new
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
			flash[:success] = "Todo was successfully updated."
			redirect_to root_url
		else
			flash[:alert] = 'There was a problem updating the Todo.'
        	render :edit
		end
	end

	def destroy
		@todo = Todo.find(params[:id]).delete
		flash[:success] = "Todo was successfully deleted."
		redirect_to root_url
	end

	private
		def todo_params
			params.require(:todo).permit(:title, :notes)
		end
end
