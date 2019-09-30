Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#index'
  post '/books', to: 'books#create'
  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show'
  post '/books/:id', to: 'books#update'
  delete '/books/:id', to:  'books#destroy'
end
