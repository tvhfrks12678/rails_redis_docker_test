Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'hoge/:id', to: 'redis_samples#hoge'
  resource :redis, only: %i[show]
end
