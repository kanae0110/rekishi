Rails.application.routes.draw do
 get "/quizzes", to: "quizzes#index"
 post "/quizzes", to: "quizzes#create"
 get "/quizzes/new", to: "quizzes#new", as: "new_quiz"
 get "/quizzes/:id/edit", to: "quizzes#edit", as: "edit_quiz"
 get "/quizzes/:id", to: "quizzes#show", as: "quiz"
 patch "/quizzes/:id", to: "quizzes#update"
 delete "/quizzes/:id", to: "quizzes#destroy"
end
