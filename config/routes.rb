Rails.application.routes.draw do
  resources :monologues do
    collection do
      post :confirm
    end
  end
end
