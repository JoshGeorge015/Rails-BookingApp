Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'login', to: 'devise/registrations#new'
    get 'signup', to: 'devise/registrations#new'
    get 'signout', to: 'devise/registrations#new'
  end
  get '', to: 'home#index'
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
