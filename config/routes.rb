Rails.application.routes.draw do
  root "planners#index"
  resources :planners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
