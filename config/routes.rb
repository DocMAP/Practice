Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

#nested routes - remember to change the directories in controllers and views:
#(create new admin folder and move dashboard controller inside)
#and inform/rename the dashboard controller
namespace :admin do  
  get 'dashboard/main'
  get 'dashboard/user'
  get 'dashboard/group'
end

  resources :portfolios
  get 'portfolio/:id', to: 'portfolios#show'
  #globbing allows for anything after portfolios/ in the browser to redirect

  get 'about', to: 'pages#about'
  get 'home', to: 'pages#home'
  get 'contact', to: 'pages#contact', as: 'info' 
  #only changes the method name to 'info' in routes not the view
  
  resources :blogs do
    member do
      get :toggle_status     
    end
    
  end

#route for dynamic query routes
  get 'query/:random', to: 'pages#something'
  get 'query/:random/:another_one', to: 'pages#something'
  get 'query/:random/:another_one/:and_another', to: 'pages#something'

  root to: 'pages#home'
end
