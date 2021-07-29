class CommentsController < ApplicationController
    before_action :authenticate_user!
    
    def create
        @comment = current_user.comments.create(comment_params)
        @video = @comment.video
    end

    def destroy
        @comment = current_user.comments.find params[:id]
        @video = @comment.video
        @comment.destory
    end

    private

    def comment_params
        params.require(:comment).permit(:body, :video_id)
    end
end
