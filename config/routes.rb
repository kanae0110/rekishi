Rails.application.routes.draw do
 get "/quizzes", to: "quizzes#index"
 get "/quizzes/:id", to: "quizzes#show", as: "quiz"
end
