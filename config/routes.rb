Rails.application.routes.draw do

  devise_for :users
  resources :contact_lists
  resources :custom_field

  devise_scope :user do
    root :to => 'devise/sessions#new'
  end

end