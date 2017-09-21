Rails.application.routes.draw do
  get 'home/index'

  get 'welcome/index'

  resources :keys

  resources :gates do
	  resources :keys
  end

  root 'welcome#index' 
end
