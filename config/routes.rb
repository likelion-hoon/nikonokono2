Rails.application.routes.draw do

  #resources :bulletins do
  resources :posts, controller: 'showme'
  #end

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  # controller map routing
  root 'map#index'
  get 'map/index'
  get 'map/map' => "map#map"

  # controller showme routing
  post 'showme/reply_write' => 'showme#reply_write'
  get 'showme/recommend/:id' => 'showme#recommend', as: 'showme_recommend'
  get 'showme/reply_delete/:reply_id' => 'showme#reply_delete'
end
