Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do 
    get '/users' => 'users#index'

    post '/users' => 'users#create'

    post "/sessions" => "sessions#create"

    get "/current" => 'users#user_logged'

    get '/tasks' => 'tasks#index'

    post'/tasks' => 'tasks#create'


  end 
  



end
