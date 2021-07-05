Rails.application.routes.draw do
    devise_for :users, except: [:new_user_registration]
    root to: 'resume#view'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    
    get '/' => 'resume#index'
    
    get 'view/:id' => 'resume#view'
    
    post 'move/:id' => 'resume#move'
end
