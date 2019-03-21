Rails.application.routes.draw do
  resources :dogs, only: %i[index show]
  resources :employees, except: %i[destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
