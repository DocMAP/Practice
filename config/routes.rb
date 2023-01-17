Rails.application.routes.draw do

#nested routes - remember to change the directories in controllers and views:
#(create new admin folder and move dashboard controller inside)
#and inform/rename the dashboard controller
namespace :admin do  
  get 'dashboard/main'
  get 'dashboard/user'
  get 'dashboard/group'
end

  resources :portfolios
  get 'portfolios/*missing', to: 'portfolios#missing'
  #globbing allows for anything after portfolios/ in the browser to redirect

  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact', as: 'info' 
  #only changes the method name to 'info' in routes not the view
  
  resources :blogs do
    member do
      get :toggle_status     
    end
    
  end

  root to: 'pages#home'
end
