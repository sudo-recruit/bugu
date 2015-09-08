class CommentsController < ApplicationController
  def create
  	@bug = Bug.find(params[:bug_id])
  	@comment = @bug.comments.create(comment_params)
  	@comment.bug.status = @comment[:change_status]
  	@status = Comment.change_statuses


  	if @comment.save && @comment.bug.save
  		redirect_to bug_path(@bug)
  	end

  end

  private

  def comment_params
  	params[:comment].permit(:content, :change_status)
  end
  
end
