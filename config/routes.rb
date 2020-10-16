Rails.application.routes.draw do
 get "/quizzes", to: "quizzes#index"
 post "/quizzes", to: "quizzes#create"
 get "/quizzes/new", to: "quizzes#new", as: "new_quiz"
 get "/quizzes/:id", to: "quizzes#show", as: "quiz"
end
