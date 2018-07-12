Rails.application.routes.draw do
  root "companies#index"
  resources :companies
  resources :jobs
end
