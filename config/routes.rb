Rails.application.routes.draw do
  root 'posts#index'

  resources :posts do
    resources :comments
  end

  get "about", :to => "static_pages#about"
  get "contact", :to => "static_pages#contact"
end
