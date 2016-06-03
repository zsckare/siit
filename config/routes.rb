Rails.application.routes.draw do

  resources :scores
  resources :students
  resources :subjects
  resources :teachers
  root 'welcome#index'
  resources :assigneds

  namespace :api ,defaults: {format: :json}do
    namespace :v1 do
        resources :subjects
        resources :scores
        get 'login/attemp'
        get  'assigneds/get_subjects'
    end
  end
  
end
