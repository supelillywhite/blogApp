Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/titles'

  get 'pages/authors'

  get 'pages/subjects'

  resources :blogs
  
end
