Rails.application.routes.draw do
  resources :invoices, only: [:create]
end
