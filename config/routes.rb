Rails.application.routes.draw do
  get '/' => 'client/brain_areas#index'

  namespace :client do
    get '/brain' => 'brain_areas#index'
    get '/brain/:id' => 'brain_areas#show'
  end
end
