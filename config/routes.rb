Rails.application.routes.draw do
  root 'homes#top'
  # get '/' => "homes#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :microposts
end
