Rails.application.routes.draw do

  devise_for :users
  root 'map#index'

  get 'map/index'

  get 'showme/board' => "showme#board"
  get 'showme/board_write'
  get 'showme/board_write_form'

  get 'map/map' => "map#map"

  # board_write_form에서 board_write로 로직처리를 넘긴다.
  post '/board_write' => "showme#board_write"

  get 'showme/:id' => "showme#board_show"

  get 'showme/board_update_form/:id' => "showme#board_update_form"

  get 'showme/board_delete/:id' => 'showme#board_delete'

  # board_update_form에서 board_update로 로직처리를 넘긴다.
  post 'showme/board_update/:id' => 'showme#board_update'
end
