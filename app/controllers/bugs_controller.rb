class BugsController < ApplicationController
  
  def index
    @bugs = Bug.all
  end

  def show
    @bug = Bug.find(params[:id])
    @statuses = Bug.statuses

    
  end

  def new
    @bug = Bug.new()
  end

  def create
    @bug =  Bug.new(bug_params)
    @bug.status = params[:bug][:status].to_i
    if @bug.save
      redirect_to bug_path(@bug)
    else
      render 'new'
    end
  end

  def update
    @bug = Bug.find(params[:id])
    @statuses = Bug.statuses

    if @bug.update!(bug_params)
      redirect_to bug_path(@bug)
    end
  end

  private

  def set_bug
    @bug = Bug.find(params[:id])
  end

  def bug_params
    params[:bug].permit(:title, :body,:status)
  end

end
