Rails.application.routes.draw do
  
  devise_for :users
  root 'tops#top'
  get 'about' => 'tops#about'
  resources :movies
  resources :users, only: [:show, :edit]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
