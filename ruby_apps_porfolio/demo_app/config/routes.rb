DemoApp::Application.routes.draw do
  get "static_pages/home"

  get "static_pages/help"

  resources :microposts

  resources :users


  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
