Rails.application.routes.draw do
  get 'private_shift/index'
  get 'private_shift/new'
  get 'staffs/index'
  get 'root' => 'application/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
