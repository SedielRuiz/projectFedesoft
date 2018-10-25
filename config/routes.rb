Rails.application.routes.draw do
  resources :result_risks
  resources :risk_methods
  resources :poll_questions
  resources :comments_forums
  resources :forums
  resources :contraceptive_methods
  resources :ratings
  resources :apply_surveys
  resources :result_surveys
  resources :options_questions
  resources :polls
  resources :questions
  resources :risks
  resources :methods_preventions
  resources :neighborhoods
  resources :locations
  post 'user_token' => 'user_token#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
