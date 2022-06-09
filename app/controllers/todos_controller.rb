class TodosController < ApplicationController
  def index
    @user = current_user
    @todos = Todo.where(user: @user)
  end

  def show
    @todo = Todo.find(params[:id])
    if @todo.user == current_user
      render :show
    else
      redirect_to todos_path
    end
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user = current_user
    if @todo.save
      redirect_to todo_path(@todo)
    else
      render :new
    end
  end

  def edit
    @todo = Todo.find(params[:id])
    if @todo.user == current_user
      render :edit
    else
      redirect_to todos_path
    end
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
    redirect_to todo_path(@todo)
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :description, :state)
  end
end
