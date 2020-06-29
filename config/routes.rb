Rails.application.routes.draw do
  resources :shops do
    resources :sweets, only: %i[index create]
  end
  resources :categories do
    resources :sweets, only: :index
  end

  resources :sweets, except: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
