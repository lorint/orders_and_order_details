Rails.application.routes.draw do
  root "orders#index"
  resources :orders do
    resources :list_items
  end
end
