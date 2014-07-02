get '/' do
  @categories = Category.all
  # Look in app/views/index.erb
  erb :index
end


get '/category/:id' do
  @category = Category.find(params[:id])
  @posts = @category.posts
  erb :category
end

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post
end

get '/new_post/new' do
  @categories = Category.all
  erb :new_post
end

get '/post/:url/edit' do
  @post = Post.find_by_url(params[:url])
  erb :edit_post
end

get '/post/secret_code/:id' do
  @post = Post.find(params[:id])
  erb :secret_code
end

post '/new_post/new' do
  p params
  @post = Post.create(params)#title: params[:title], price: params[:price], location: params[:location], email: params[:email], description: params[:description])
  @post.set_random_url
  redirect "/post/secret_code/#{@post.id}"
end

post '/post/:id' do
  @post = Post.find(params[:id])
  @post.update_attributes(title: params[:title], price: params[:price], location: params[:location], email: params[:email], description: params[:description])
  redirect "/post/#{@post.id}"
end



# post '/' do
#   Post.create( title, :description, :email, :price, :location)
#   @new_post = params[:post]
# end

