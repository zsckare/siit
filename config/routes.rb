Rails.application.routes.draw do
  resources :scores
  resources :students
  resources :subjects
  resources :teachers

  namespace :api ,defaults: {format: :json}do
    namespace :v1 do
        resources :subjects
    end
  end
  
end
