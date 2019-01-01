Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :proportions
      resources :ingredients
      resources :cocktails
    end
  end
end
