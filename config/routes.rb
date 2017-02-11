Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # this will set the welcome/index as the root of our application
  root 'welcome#index'

  # this will add all the resources for our application
  resources :docs
end
