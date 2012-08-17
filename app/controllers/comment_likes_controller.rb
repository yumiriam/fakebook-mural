class CommentLikesController < ApplicationController
	def create
		@comment = Comment.find(params[:comment_id])
		@user = User.find(current_user) 
		@like = CommentLike.create(params[:comment_like])
		@user.comment_likes << @like
		@comment.comment_likes << @like
		# redirect_to mural_posts_path
		respond_to do |format|
	  	format.js
	  end
	end
	
	def destroy
	  @comment = Comment.find(params[:comment_id])
	  @like = @comment.comment_likes.find(params[:id])
	  @like.destroy
	  # redirect_to mural_posts_path
	  respond_to do |format|
	  	format.js
	  end
	end
end
