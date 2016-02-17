require 'sinatra'
require 'sinatra/flash'

enable :sessions

post '/comments/posts/:post_id' do  #Post Comment

  if logged_in?
    @user = current_user
    @post = Post.find(params[:post_id])
    @comment = Comment.new(params[:comment].merge(user_id: @user.id, post_id: @post.id))
    if @comment.save  
     redirect "/comments/posts/#{@post.id}"
    else
      redirect '/'
    end

  else  # If user is "NOT" LOGGED IN

    flash[:notice] = "You are not logged_in ! Please sign in to answer"
    @post = Post.find(params[:post_id])
    redirect "/posts/#{@post.id}"
  end
end

get '/comments/posts/:post_id' do
  @user = current_user
  @post = Post.find(params[:post_id])
  @comments = Comment.where(post_id: @post.id)
  erb :"post/index"
end