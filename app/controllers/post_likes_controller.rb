class PostLikesController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@user = User.find(current_user) 
		@like = PostLike.create(params[:post_like])
		@user.post_likes << @like
		@post.post_likes << @like
		redirect_to post_path(@post)
	end
	
	def destroy
	  @post = Post.find(params[:post_id])
	  @like = @post.post_likes.find(params[:id])
	  @like.destroy
	  redirect_to post_path(@post)
	end
end