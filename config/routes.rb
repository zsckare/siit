Rails.application.routes.draw do
  get 'welcome/index'

  resources :scores
  resources :students
  resources :subjects
  resources :teachers
  root 'welcome#index'
  namespace :api ,defaults: {format: :json}do
    namespace :v1 do
        resources :subjects
        resources :scores
        get 'login/attemp'
    end
  end
  
end
