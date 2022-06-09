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
    @todo = Todo.new(todo_params_strict)
    @todo.state = false
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
    if params[:state].nil?
      @todo.update(todo_params_strict)
    else
      @todo.update(todo_params)
    end
    if params[:title].nil?
      redirect_to todos_path
    else
      redirect_to todo_path(@todo)
    end
  end

  private

  def todo_params_strict
    params.require(:todo).permit(:title, :description)
  end

  def todo_params
    params.permit(:title, :description, :state, :id)
  end
end
