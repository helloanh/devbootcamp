get '/:word' do
  # Look in app/views/index.erb
  @word = params[:word]
  erb :index
end
