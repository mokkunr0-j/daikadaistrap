Rails.application.routes.draw do
  root to: 'tops#index'
  resources :monologues do
    collection do
      post :confirm
    end
  end
end
