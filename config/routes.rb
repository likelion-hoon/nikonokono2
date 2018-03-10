Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  root 'map#index'

  get 'map/index'

  get 'showme/board' => "showme#board"
  get 'showme/board_write'
  get 'showme/board_write_form'

  get 'map/map' => "map#map"

  # board_write_form에서 board_write로 로직처리를 넘긴다.
  post '/board_write' => "showme#board_write"

  get 'showme/board_show/:id' => "showme#board_show"

  get 'showme/board_update_form/:id' => "showme#board_update_form"

  get 'showme/board_delete/:id' => 'showme#board_delete'

  # board_update_form에서 board_update로 로직처리를 넘긴다.
  post 'showme/board_update/:id' => 'showme#board_update'

  post 'showme/reply_write' => 'showme#reply_write'

  # recommend routes 설정
  get 'showme/recommend/:id' => 'showme#recommend', as: 'showme_recommend'

  # 댓글 삭제 action
  get 'showme/reply_delete/:reply_id' => 'showme#reply_delete'

  # naver action 설정
  get 'showme/callback' => 'showme#callback'
end
