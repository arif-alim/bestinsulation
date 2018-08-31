Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :gallery, only: [:index]
  resources :reviews, only: [:index]
  resources :contacts, only: [:new, :create]
  resources :call_backs, only: [:new, :create]
  resources :home, only: [:index] do
    collection do
      get :contact_us
    end
  end
  resources :about, only: [:index] do
    collection do
      get :who_are_we
      get :customer_promise
      get :sustainability
      get :affiliations
      get :partners
      get :testimonials
      get :blog
      get :faqs
    end
  end
  resources :spray_foam, only: [:index] do
    collection do
      get :why_spray_foam
      get :health_and_safety
      get :moisture_control
      get :energuide_ratings
      get :open_or_closed_cell
      get :home_insulation_guide
      get :spray_foam_vs_traditional
      get :energy_efficiency_and_savings
    end
  end
  resources :services, only: [:index] do
    collection do
      get :spray_foam_insulation
      get :ceiling_and_attic_insulation
      get :walls_insulation
      get :basement_insulation
    end
  end
  root to: 'home#index'
  # get '/:page' => 'home#index'
end
