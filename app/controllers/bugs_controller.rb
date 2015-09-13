class BugsController < ApplicationController


  def index
    @bugs = Bug.all.order(created_at: :desc)
  end

  def show
    @bug = Bug.find(params[:id])
    @statuses = Bug.statuses

    
  end

  def new
    @bug = current_user.bugs.create()
  end

  def create
    @bug = current_user.bugs.create(bug_params)
    @bug.status = params[:bug][:status].to_i
    if @bug.save
      redirect_to bug_path(@bug)
    else

      render :new, :notice => "請確認所有欄位都已經填寫完畢" 
    end
  end

  def update
    @bug = Bug.find(params[:id])
    @statuses = Bug.statuses

    if @bug.update!(bug_params)
      redirect_to bug_path(@bug)
    end
  end
  
  def destroy
    @bug = Bug.find(params[:id])
    @bug.destroy
    
    redirect_to root_path
  end

  private

  def set_bug
    @bug = Bug.find(params[:id])
  end

  def bug_params
    params[:bug].permit(:title, :body,:status, :filepicker_url)
  end

end
