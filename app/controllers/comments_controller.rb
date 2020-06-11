class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to "/jobs/#{comment.job.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, job_id: params[:job_id])
  end
end
