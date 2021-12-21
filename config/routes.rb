Rails.application.routes.draw do
    devise_for :users #, except: [:new_user_registration] # 회원가입 사용 시 주석, 기능 사용 안할 시 주석 제거
    root to: 'resume#view'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    
    get '/' => 'resume#index'
    
    get 'view/:id' => 'resume#view'
    
    post 'move/:id' => 'resume#move'
end
