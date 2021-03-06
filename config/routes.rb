Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :calendar
      resources :album_due_dates, path: :posts
    end
  end

  resources :user_edges
  resources :album_embeds
  resources :albums
  resources :users
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
