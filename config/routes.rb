Rails.application.routes.draw do
  root to: 'register#new'
  get 'register/new'
  get 'register/create'
end
