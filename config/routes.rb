Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :todos
  # Resource route creates 6 routes (maps HTTP verbs to controller actions automatically): 
  # GET '/todos/new' (#new), POST '/todos' (#create), GET '/todos' (#show), GET '/todos/edit' (#edit), PATCH/PUT '/todos' (#update), DELETE '/todos' (#destroy)

  root 'todos#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
end
