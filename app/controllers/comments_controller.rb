class CommentsController < ApplicationController

  #create a new comment - POST /videos/:id/comments
  def create
    @video = Video.find(params[:video_id])
    @body = params[:comment][:body]
    @author = current_user
    @comment = @video.comments.new(body: @body, author: @author)

    if @comment.save
      redirect_to @video
    else
      render 'videos#show'
    end
    
  end

end
