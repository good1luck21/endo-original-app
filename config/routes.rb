Rails.application.routes.draw do
  
  get  'login',          to: 'sessions#new',    as: 'login'
  post 'session/create', to: 'sessions#create', as: 'login_create'
  
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  
  
  get  'users/new',    to: 'users#new',    as: 'user_new'
  post 'users/create', to: 'users#create', as: 'user_create'
  
  get  'users/show',   to: 'users#show',   as: 'user_show'
  
  get  'questions',        to: 'questions#index',  as: 'questions'
  get  'questions/new',    to: 'questions#new',    as: 'new_question'
  post 'questions/create', to: 'questions#create', as: 'create_question'
  get  'questions/:id',    to: 'questions#show',   as: 'question'
  
   
  get  'answers/new',    to: 'answers#new',    as: 'answer_new'
  post 'answers/create', to: 'answers#create', as: 'answer_create'
  get  'answers/:id',    to: 'answers#show',   as: 'answer'
 
 
  root 'pages#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
