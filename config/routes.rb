Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :programs, only: [:index, :show]
  resources :perfomances, only: [:index, :show]
  resources :candy_bars, only: [:index, :show]

  root 'pages#landing'
  get "contacts", to: "pages#contacts", as: "contacts"
  get "week_action", to: "pages#week_action", as: "week_action"
end
