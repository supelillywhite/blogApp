Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/titles'

  get 'pages/authors'

  get 'pages/subjects'

  resources :blogs

  root to: 'pages#home'
  get 'titles', to: "pages#titles"
  get 'authors', to: "pages#authors"
  get 'subjects', to: "pages#subjects"
  
end
