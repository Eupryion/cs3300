Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  #root "projects#index"
  root to: "projects#index" #added per iteration 5
  resources :projects, :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
