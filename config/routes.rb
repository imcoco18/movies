Rails.application.routes.draw do
  root 'tops#top'
  get 'tops/about'
  get 'movies/index'
  get 'movies/show'
  get 'movies/new'
  get 'movies/create'
  get 'movies/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
