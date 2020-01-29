Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update,:delete]
  resources :books do
  	 resource :favorites, only: [:create, :destroy]
  	 resource :book_comments, only: [:create, :destroy]
  	end
  root 'home#top'
  get 'home/about'
  delete 'books' => "books#delete"
end
