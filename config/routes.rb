Rails.application.routes.draw do
  get '/' => 'static_pages#index'
  get '/jobs' => 'jobs#index'
  post '/jobs' => 'jobs#create'
  get '/jobs/:id' => 'jobs#show'

end
