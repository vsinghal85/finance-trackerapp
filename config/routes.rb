Rails.application.routes.draw do
  
  get 'friendships/destroy'

  get 'friendship/destroy'

  devise_for :users, controllers: { registrations: 'registrations' }
	  #devise_for :users, :controllers => {:registrations => "user/registrations"}
	  resources :user_stocks,except: [:show,:edit,:update]
	root 'welcome#index'
	get 'my_portfolio',to: "users#my_portfolio"
	#get 'welcome/index'
    get 'search_stocks', to: "stocks#search"
    get 'my_friends', to: "users#my_friends"
    resources :users, only: [:show]
    resources :friendships
    get 'search_friends', to: "users#search"
    post 'add_friend', to: "users#add_friend"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
