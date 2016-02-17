get '/' do
	@posts = Post.all
	erb :"static/index"
end

not_found do
  halt 404, 'page not found'
end