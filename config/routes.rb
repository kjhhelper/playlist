Rails.application.routes.draw do
  get '/main'=> 'users#new'
  post '/users'=>'users#create'
  post '/sessions'=>'sessions#create'
  delete '/sessions/:id'=>'sessions#destroy'

  get '/songs/new'=>'songs#new'
  post '/songs'=>'songs#create'
  get '/songs/:id'=>'songs#show'
  # get 'users/new'
  post '/adds'=>'adds#create'

  get 'users/:id'=>'users#show'
end
