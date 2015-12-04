Rails.application.routes.draw do

  resources :contact_lists
  devise_for :users

  devise_scope :user do
    root :to => 'devise/sessions#new'
  end

  resources :users, only: [] do
    resources :contact_lists
  end
end
