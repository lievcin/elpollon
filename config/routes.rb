Elpollon::Application.routes.draw do

  resources :bets

  resources :posts

  root :to => 'pages#home'

  get 'admin', :to => 'pages#admin'
  get 'main', :to => 'pages#main'  
  get 'poll_view', :to => 'pages#poll_view'    
  get 'rules',  :to => 'pages#rules'
  get 'ranking', :to => 'polls#ranking'      
  get 'members', :to => 'polls#members'        
  get 'join',  :to => 'polls#join'

  resources :teams
  resources :users

  resources :cups do
    resources :rounds do
    end
  end

  resources :games do
    collection do
      get :result_index
    end
    member do
      get :fix_result
      put :save_result
    end
  end
  
  resources :polls do
    collection do
      get :kick_out
      get :invite
    end
  end

  get "auth/:provider/callback", to: "sessions#create"
  get "auth/failure", to: redirect("/")
  get "signout", to: "sessions#destroy", as: "signout"

  post "/facebook/channel", to: "facebook#channel"
  get "/facebook/channel", to: "facebook#channel"
end
