Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get "signup", to: "devise/registrations#new"
    get "login", to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
  end
  get '/', to: 'orders#index'
  post '/orders/submit', to: 'orders#submit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
