Rails.application.routes.draw do

  resources :schools, only: [:index, :show]
  resources :students
  get '/support', to: "supports#new", as: 'support'
  post '/support', to: "supports#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
