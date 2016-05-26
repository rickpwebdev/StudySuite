Rails.application.routes.draw do
 resources :studies, only: [ :index ]
  devise_for :users
	root 'dashboard#index'

	get "angular_test", to: "angular_test#index"
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
