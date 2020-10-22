Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'tops#index'
  resources :monologues do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new,:create,:show,:update,:edit]
  resources :favorites, only: [:create, :destroy, :index]
  post 'favorites/:id' ,to: 'favorites#create'
end
