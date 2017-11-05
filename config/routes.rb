Rails.application.routes.draw do
  namespace :geography do
    resources :states
    resources :cities
  end
end
