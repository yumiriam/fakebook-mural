class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@user = User.find(current_user) 
		@comment = Comment.create(params[:comment])
		@user.comments << @comment
		@post.comments << @comment
		# redirect_to post_path(@post)
		# redirect_to mural_posts_path
		
		respond_to do |format|
			format.js
		end
	end
	
	def destroy
	  @post = Post.find(params[:post_id])
	  @comment = @post.comments.find(params[:id])
	  @comment.destroy
	  # redirect_to post_path(@post)
	  #redirect_to mural_posts_path
		respond_to do |format|
			format.js
		end
	end
end
