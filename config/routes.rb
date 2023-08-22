Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "booking_confirmation", to: "bookings#booking_confirmation"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "instruments#index"
resources :instruments do
  resources :bookings
end

end
