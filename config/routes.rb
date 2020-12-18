Rails.application.routes.draw do
  resources :blogs
  resources :posts
  resources :required_skills
  resources :follows
  resources :project_skills
  resources :projects
  resources :collaborations
  resources :user_skills
  resources :skills
  resources :users
  resources :sessions, only: [:create]

  post "/feed", to: "users#feed" 
  post "/follow", to: "users#follow" 
  delete "/logout", to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
