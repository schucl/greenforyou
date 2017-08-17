Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :plants do
    resources :bookings
  end
  resources :users, only: [:show, :edit, :update]
  get    "bookings/:id/accept",      to: "bookings#accept", as: "accept_booking"
  get    "bookings/:id/reject",      to: "bookings#reject", as: "reject_booking"
  mount Attachinary::Engine => "/attachinary"
end
