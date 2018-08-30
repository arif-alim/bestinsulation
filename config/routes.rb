Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts, only: [:new, :create]
  root to: 'home#index'
  # get '/:page' => 'home#index'
  resources :home, only: [:index] do
    collection do
      get :contact_us
    end
  end
end
