Rails.application.routes.draw do
  root to: 'pets#index'
  # get '/pets', to: 'pets#index'
  get 'pets/new', to: 'pets#new', as: :new_pet
  get 'pets/:id', to: 'pets#show', as: :pet
  post 'pets', to: 'pets#create', as: :pets
  get 'pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch 'pets/:id', to: 'pets#update'
  delete 'pets/:id', to: 'pets#destroy'
end


# ☑️ As a user I can see all found pets

# ☑️ As a user I can see details about one found pet (when and where it was found)

# As a user I can add a pet I found

# As a user I can update a pet

# As a user I can delete a pet
