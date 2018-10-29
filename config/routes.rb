Rails.application.routes.draw do
  resources :messages
  root to: 'main#start_page'
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
