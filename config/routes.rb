Rails.application.routes.draw do
  resources :book_copies
  resources :shops
  resources :books
  resources :publishers

  root 'publishers#index', as: 'publisher_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
