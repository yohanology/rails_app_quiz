Rails.application.routes.draw do
  get '/' => 'static_pages#index'
  get '/jobs' => 'jobs#index'
end
