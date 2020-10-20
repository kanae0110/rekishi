Rails.application.routes.draw do
 get "/stories", to: "stories#index"
 get "/stories/:id", to: "stories#show", as: "story"
end
