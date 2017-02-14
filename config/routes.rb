Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'stats#index'
  get 'tests/index'

  post 'locations/nearby', to: 'locations#nearby'
  get 'locations/hot', to: 'locations#hot'

  get ':building_id/reviews', to: 'reviews#index'
  post ':building_id/reviews', to: 'reviews#create'
end
