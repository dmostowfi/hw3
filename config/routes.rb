Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources "posts"
  resources "places"
  # Defines the root path route ("/"). AKA where you want the user to go first
  get("/", { :controller => "places", :action => "index" })
end
