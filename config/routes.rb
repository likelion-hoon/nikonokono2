Rails.application.routes.draw do

  resources :posts, controller: 'showme' # 노래 업로드 게시판
  resources :bulletins do
    resources :boards
  end

  devise_for :admins
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  # controller map routing
  get 'map/map' => "map#map"

  # controller showme routing

  get 'showme/index' => "showme#index"
  get 'showme/main'
  get 'showme/rank'
  get 'showme/mypage'
  post 'showme/reply_write' => 'showme#reply_write'
  get 'showme/recommend/:id' => 'showme#recommend', as: 'showme_recommend'
  get 'showme/reply_delete/:reply_id' => 'showme#reply_delete'

  root 'showme#main'

end
