Rails.application.routes.draw do
  get '/' => 'client/brain_areas#index'

  namespace :client do
    get '/brains' => 'brain_areas#index'
    get '/brains/:id' => 'brain_areas#show'
  end
end
