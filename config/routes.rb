Rails.application.routes.draw do
  root 'tops#top'
  get 'about' => 'tops#about'
  resources :movies
  resources :users, only: [:show, :edit]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
