Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # this will add all the resources for our application
  resources :docs
  # this is to redirect the current login user to page
  authenticated :user do
  	root "docs#index", as: "authenticated_root"
  end

  # this will set the welcome/index as the root of our application
  root 'welcome#index'
end
