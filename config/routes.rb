Rails.application.routes.draw do
  resources :portfolios

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
