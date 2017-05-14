Rails.application.routes.draw do
  scope '/site' do
    resources :passwords, controller: "clearance/passwords", only: [:create, :new]
    resource :session, controller: "clearance/sessions", only: [:create]

    resources :users, controller: "clearance/users", only: [:create] do
      resource :password,
        controller: "clearance/passwords",
        only: [:create, :edit, :update]
    end

    get "/sign_in" => "clearance/sessions#new", as: "sign_in"
    delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
    get "/sign_up" => "clearance/users#new", as: "sign_up"

    constraints Clearance::Constraints::SignedIn.new { |user| user.admin? } do
      namespace :admin do
        resources :albums
        resources :album_due_dates
        resources :album_embeds
        resources :artists
        resources :users
        resources :user_edges

        root to: "albums#index"
      end
    end

    resources :user_edges
    resources :album_embeds
    resources :albums
    resources :users
    resources :artists
  end

  namespace :api do
    namespace :v1 do
      resources :calendar
      resources :album_due_dates, path: :posts
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
