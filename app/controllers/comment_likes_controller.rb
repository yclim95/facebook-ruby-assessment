post '/comments/:comment_id/comment_likes/:comment_like_id/update' do  #To Update 
 if logged_in?
	@comment = Comment.find(params[:comment_id])
	new_vote = current_user.comment_likes.new(:comment => @comment)  #Push in a new records to a new row
	if new_vote.save
		redirect "/comments/posts/#{@comment.post_id}"
	else 
	  flash[:error] = "You are not allowed to vote for comments you have commented!"
	  redirect "/comments/posts/#{@comment.post_id}"
	end 
	
  else
	flash[:notice] = "You are not logged_in ! Please sign in to answer"
	@comment = Comment.find(params[:comment_id])
	redirect "/comments/posts/#{@comment.post_id}"
  end

end

post '/comments/:comment_id/comment_likes/:comment_like_id/delete' do  #To Destroy 
	if logged_in?
	@comment = Comment.find(params[:comment_id])
	new_vote = current_user.liked_comments.destroy(@comment)
	redirect "/comments/posts/#{@comment.post_id}"

	else
	flash[:notice] = "You are not logged_in ! Please sign in to answer"
	@comment = Comment.find(params[:comment_id])
	redirect "/comments/posts/#{@comment.post_id}"
	end
end
