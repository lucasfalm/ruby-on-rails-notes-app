Rails.application.routes.draw do
  resources :notes
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'notes#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
