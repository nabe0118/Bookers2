Rails.application.routes.draw do
  devise_for :users
  root 'home#top' 
  get 'home/about' => 'home#about', as: 'about'
  resources :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

                #   users GET    /users(.:format)                                                                         users#index
                #           POST   /users(.:format)                                                                         users#create
                #  new_user GET    /users/new(.:format)                                                                     users#new
                # edit_user GET    /users/:id/edit(.:format)                                                                users#edit
                #      user GET    /users/:id(.:format)                                                                     users#show
                #           PATCH  /users/:id(.:format)                                                                     users#update
                #           PUT    /users/:id(.:format)                                                                     users#update
                #           DELETE /users/:id(.:format)                                                                     users#destroy
                #     books GET    /books(.:format)                                                                         books#index
                #           POST   /books(.:format)                                                                         books#create
                #  new_book GET    /books/new(.:format)                                                                     books#new
                # edit_book GET    /books/:id/edit(.:format)                                                                books#edit
                #      book GET    /books/:id(.:format)                                                                     books#show
                #           PATCH  /books/:id(.:format)                                                                     books#update
                #           PUT    /books/:id(.:format)                                                                     books#update
                #           DELETE /books/:id(.:format)                                                                     books#destroy