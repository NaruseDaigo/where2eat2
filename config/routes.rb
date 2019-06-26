Rails.application.routes.draw do
  root 'sessions#new'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/start', to: 'choices#start'
  get '/make', to: 'choices#make'
  post '/choose', to: 'choices#choose'
  get '/result', to: 'choices#result'
  get '/testcase', to: 'choices#testcase'


  get 'eatery/new', to: 'eateries#new'
  resources :users
  resources :eateries
end
