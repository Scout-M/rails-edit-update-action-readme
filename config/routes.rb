Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show, :new, :create]
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'  
end


# could also have this in resources: resources :articles, only: [:index, :show, :new, :create, :edit, :update] 
# this accomplishes the same thing in one line. But with a PUT not a PATCH
# PUT is fine to use, but generally it is used when replacing the whole thing
# PATCH is used for sending a set of changes to the resource