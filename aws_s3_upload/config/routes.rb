Rails.application.routes.draw do
  post '/presigned_url', to: 'direct_upload#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
end
