Rails.application.routes.draw do
 get "/stories", to: "categories#index"
 get "/stories/:category", to: "categories#show"
 
 get "/signup", to: "users#new"
 post "/signup", to: "users#create"
 get "/login", to: "session#new"
 post "/login", to: "session#create"
 get "/logout", to: "session#destroy"
 
 namespace :admin do
   resources :stories
   resources :quizzes
 end

end
