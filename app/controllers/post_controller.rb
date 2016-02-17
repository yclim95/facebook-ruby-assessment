get '/post/new' do
	@user = current_user
	erb :"post/new"
end

post '/post/new' do
	@user = current_user
	@post = Post.new(params[:post].merge(user_id: @user.id))
	if @post.save  #If the post pass the validation (able to have duplicate user.id)
		redirect '/users/posts'
	else
		redirect '/posts/new'
	end
end

get '/post/:post_id' do
	@user = current_user
	@post = Post.find(params[:post_id])
	@comments = Comment.where(post_id: @post.id)
	erb :"post/index"
end