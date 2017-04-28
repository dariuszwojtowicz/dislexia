Rails.application.routes.draw do
  get    '/levels/:id',   to: 'levels#show'
  get    '/categories/:id',   to: 'categories#show'
  post   '/tasks/:id/answer', to: 'tasks#answer'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  	 '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  root   'home_pages#home'
  get 	 'home_pages/home'
  get    '/about',   to: 'home_pages#about'
  get    '/rankings',   to: 'home_pages#rankings'
  resources :users
end