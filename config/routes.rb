Rails.application.routes.draw do
  get 'secrets/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/login'

  get 'sessions/destroy'

  get 'secrets', to: 'secrets#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
