Rails.application.routes.draw do
	
  get 'index' =>  'epicenter#index'
  get 'projects' => 'epicenter#projects'
  get 'guide' => 'epicenter#guide'
  get  'about' => 'epicenter#about'
  resources :projects
  resources :voicelines
  resources :character_lines
  devise_for :users
  
  get 'test' => 'test#test_view'


  root 'epicenter#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
