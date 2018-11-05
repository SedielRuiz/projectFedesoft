Rails.application.routes.draw do
  resources :result_risks
  resources :risk_methods
  resources :poll_questions
  get 'questionsPoll/:poll_id' => 'poll_questions#questiosSurvey'
  resources :comments_forums
  get 'commetsForum/:forum_id' => 'comments_forums#commetsForum'
  resources :forums
  resources :contraceptive_methods
  resources :ratings
  resources :apply_surveys
  resources :result_surveys
  resources :options_questions
  get 'optionsQuestion/:question_id' => 'options_questions#optionsQuestion'
  resources :polls
  resources :questions
  resources :risks
  resources :methods_preventions
  resources :neighborhoods
  resources :locations
  post 'user_token' => 'user_token#create'
  resources :users
  get 'signIn/:email' => 'users#signIn'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
