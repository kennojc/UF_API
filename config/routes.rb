Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :values
  resources :users  
  
  get 'by_date/:date', to: 'values#by_date'
  get ':username', to: 'users#by_name'

end


