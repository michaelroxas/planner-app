Rails.application.routes.draw do
  devise_for :users
  root "planners#index"
  resources :planners do
    resources :tasks
  end
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
