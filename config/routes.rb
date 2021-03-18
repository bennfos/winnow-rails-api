Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create]
      resources :registrations, only: [:create]
      delete :logout, to: "sessions#logout"
      get :logged_in, to: "sessions#logged_in"
      resources :users
      resources :books
      resources :pages
      resources :quotes
      get 'pages/:book_id/:month/:day', to: 'pages#check'
      match '*path', :controller => 'application', :action => 'empty', :constraints => {:method => "OPTIONS"}
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
