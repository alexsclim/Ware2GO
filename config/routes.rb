Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'landing#index'
  get 'stats/users', to: 'stats#users'
  get 'stats', to: 'stats#index'
  get 'tests/index'

  post 'locations/nearby', to: 'locations#nearby'
  get 'locations/hot', to: 'locations#hot'

  get ':building_id/reviews', to: 'reviews#index'
  post ':building_id/reviews', to: 'reviews#create'

  post 'visited', to: 'users#visited'
  get 'winners', to: 'users#winners'
  get '/claims/:user_id', to: 'users#claim', as: 'claim_path'

  get 'locations', to: 'locations#index'

  get 'assistances', to: 'assistances#index'
  get 'assistances_page', to: 'assistances#index_html'
  get 'assistances/:user_id', to: 'assistances#show'
  post 'assistance', to: 'assistances#create'
  delete 'assistance/:user_id', to: 'assistances#destroy'

  get 'assistance/maps', to: 'assistance_maps#index'
  get 'assistance/:user_id/location', to: 'assistances#user_location'
end
