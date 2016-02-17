require 'byebug'

get '/user/sign_in' do
  erb :"user/sign_in"
end

post '/user' do  # Sign Up 
	@user = User.new(params[:user])
	if @user.save
		session[:current_user_id] = @user.id # logging in the user
		redirect '/'
	else
		erb :"static/error"
	end
end

get '/user/signout' do
	@_current_user = session[:current_user_id] = nil   # Remove the user id from the session
	redirect '/'
end

get '/user/login' do
  erb :"user/log_in"
end

post '/user/login' do
  
	if @user= User.authenticate(params[:user][:email], params[:user][:password])  #If it is authenticate
		session[:current_user_id] = @user.id
		redirect '/'
	else
		redirect '/'
	end
end

get'/users/questions' do  # List of questions posted by the user
  @user = current_user 
  erb :"user/questions"
end

get '/user/:user_id' do
	erb :"user/profile"
end