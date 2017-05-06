class CommentsController < ApplicationController
    def create 
        new_comment = Comment.new(content: params[:content], 
                                  love_id: params[:love_id]) 
        new_comment.save 
        redirect_to :back 
    end
    
    def destroy 
        @comment.destroy 
        redirect_to :back end 

end
