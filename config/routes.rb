Rails.application.routes.draw do
 root to: 'home#index'
 resources :categories, only: [:index]
 resources :stories 
 
 get "/quizzes/finish", to: "quizzes#finish"
 resources :quizzes

 get "/signup", to: "users#new"
 post "/signup", to: "users#create"
 get "/login", to: "session#new"
 post "/login", to: "session#create"
 get "/logout", to: "session#destroy"
 get "/mypage", to: "mypage#index"
 get "/home", to: "home#index"
 
 
 namespace :admin do
   resources :stories
   resources :quizzes
 end

end
