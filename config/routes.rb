Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "lists", to: "lists#index"
  # get "lists/new", to: "lists#new"
  # get "lists/:id", to: "lists#show", as: :list
  # post "lists", to: "lists#create"

  # get "bookmarks/new", to: "bookmarks#new"
  # post "bookmarks", to: "bookmarks#create"
  root to: 'lists#index'
  resources :lists, only: [ :new, :show, :create, :destroy] do
    resources :bookmarks, only: [:new, :create, :show]
  end
  resources :bookmarks, only: [:destroy]
end
