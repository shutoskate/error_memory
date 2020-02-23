class ProblemsController < ApplicationController
  def index
    @problem = Problem.new
    @genre = Genre.new
  end

  def new
  end

  def create
    @problem = Problem.new(problem_params)
    if @problem.save
      redirect_to root_path, notice: '保存されました'
    else
      render :new
    end

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def problem_params
    params.require(:problem).permit(:title, :code, :cause, :solution)
  end


end
