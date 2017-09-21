Rails.application.routes.draw do
  get 'home/index'

  get 'welcome/index'

  resources :keys

  root 'welcome#index' 
end
