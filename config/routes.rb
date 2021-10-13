Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  
  root "planners#index"
  
  resources :planners do
    resources :tasks
  end
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
