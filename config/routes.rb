Rails.application.routes.draw do
 get "/stories", to: "stories#index"
 post "/stories", to: "stories#create"
 get "/stories/new", to: "stories#new", as: "new_story"
 get "/stories/:id/edit", to: "stories#edit", as: "edit_story"
 get "/stories/:id", to: "stories#show", as: "story"
 patch "/stories/:id", to: "stories#update"
 delete "/stories/:id", to: "stories#destroy"
end
