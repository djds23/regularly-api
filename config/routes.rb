Rails.application.routes.draw do
  resources :user_edges
  resources :album_due_dates
  resources :album_embeds
  resources :albums
  resources :users
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
