Rails.application.routes.draw do
  root to: "hotels#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :hotels, only: :show do
    resources :rooms, only: %i[index show] do
      resources :bookings, only: :create
    end
  end

  resources :bookings, only: %i[index show]
end
