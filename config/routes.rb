Rails.application.routes.draw do
  root 'application#home'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/hello' => 'secrets#show'
  get '/secret' => 'secrets#reveal'
end
