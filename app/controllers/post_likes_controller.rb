post '/posts/:post_id/post_votes/:post_like_id/update' do  #To Update 
 if logged_in?
	@post = Post.find(params[:post_id])
	new_vote = current_user.post_likes.new(:post => @post)  #Push in a new records to a new row
	if new_vote.save
		redirect "/post/#{@post.id}"
	else 
	  flash[:error] = "You are not allowed to vote for posts you have posted!"
	  redirect "/post/#{@post.id}"
	end 
	
  else
	flash[:notice] = "You are not logged_in ! Please sign in to answer"
	@post = Post.find(params[:post_id])
	redirect "/post/#{@post.id}"
  end

end

post '/posts/:post_id/post_votes/:post_like_id/delete' do  #To Destroy 
	if logged_in?
	@post = Post.find(params[:post_id])
	new_vote = current_user.liked_posts.destroy(@post)
	redirect "/post/#{@post.id}"

	else
	flash[:notice] = "You are not logged_in ! Please sign in to answer"
	@post = Post.find(params[:post_id])
	redirect "/post/#{@post.id}"
	end
end
