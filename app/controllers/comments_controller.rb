class CommentsController < ApplicationController
  def create
  	@bug = Bug.find(params[:bug_id])
  	@comment = @bug.comments.create(params[:comment].permit(:content, :change_status))
  	@comment.bug.status = @comment[:change_status]
  	@statuses = Comment.change_statuses
  	if @comment.save && @comment.bug.save
  		redirect_to bug_path(@bug)
  	end
  end


  
end
