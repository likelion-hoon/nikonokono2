Rails.application.routes.draw do

  # resources :notices (공지사항 게시판 추후예정)
  resources :posts, controller: 'showme' # 업로드 게시판
  resources :bulletins do
    resources :boards
  end

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  # controller map routing
  root 'map#index'
  get 'map/index'
  get 'map/map' => "map#map"

  # controller user routing
  get 'mypage/:id' => 'user#mypage', as: 'user_mypage'

  # controller showme routing
  post 'showme/reply_write' => 'showme#reply_write'
  get 'showme/recommend/:id' => 'showme#recommend', as: 'showme_recommend'
  get 'showme/reply_delete/:reply_id' => 'showme#reply_delete'
end
