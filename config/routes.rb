Rails.application.routes.draw do
  get 'showme/board'
  get 'showme/board_write'
  get 'showme/board_write_form'

  get 'map/map' => 'map#map'

  # board_write_form에서 board_write로 로직처리를 넘긴다.
  post '/board_write' => 'showme#board_write'

  root 'map#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
