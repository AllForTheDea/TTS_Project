Rails.application.routes.draw do
	
  resources :projects
  resources :voicelines
  resources :character_lines
  devise_for :users
  
  get 'test' => 'test#test_view'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
