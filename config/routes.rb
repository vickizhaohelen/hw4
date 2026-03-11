Rails.application.routes.draw do
  # The homepage
  get "/", :controller => "places", :action => "index"
  
  # Resources for Places and Entries
  resources "places"
  resources "entries"
  
  # Login/Logout Routes
  get "/login", :controller => "sessions", :action => "new"
  post "/login", :controller => "sessions", :action => "create"
  get "/logout", :controller => "sessions", :action => "destroy"
  
  # Signup Routes
  resources "users"
  get "/signup", :controller => "users", :action => "new"
end
