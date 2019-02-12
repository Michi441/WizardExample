Rails.application.routes.draw do
  resources :projects do
    resources :project_steps, only: [:edit, :update]
  end
  resources :projects do
    resources :project_steps, only: [:edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
