Rails.application.routes.draw do
  get 'upload_files/index'
  get 'upload_files/new'
  get 'upload_files/create'
  get 'upload_files/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Dropcube::Application.routes.draw do
   resources :upload_files, only: [:index, :new, :create, :destroy]
   root "upload_files#index"
end