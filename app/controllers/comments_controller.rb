class CommentsController < ApplicationController
  def create
  	@bug = Bug.find(params[:bug_id])
  	@comment = @bug.comments.create(params[:comment].permit(:content))

  	if @comment.save
  		redirect_to bug_path(@bug)
  	end
  end
  
end
