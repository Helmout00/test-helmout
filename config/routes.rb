Rails.application.routes.draw do

  post 'crop/:id', to: 'fruits#crop', as: 'crop_fruit'

  root 'games#index'

  get 'games/show'

  get 'games/:id', to: 'games#show', as: 'game'

  post 'games/:id/win', to: 'games#set_status_to_win', as: 'games_win'

  post 'games/:id/lost', to: 'games#set_status_to_lost', as: 'games_lost'

  post 'dice/:id', to: 'dice#roll', as: 'roll_dice'

  post 'crow/:id', to: 'crow#step', as: 'crow_step'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
