Rails.application.routes.draw do
 resources :stories, only: [:index, :show]
 namespace :admin do
   resources :stories
   resources :quizzes
 end

end
