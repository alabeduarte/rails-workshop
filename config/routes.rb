Rails.application.routes.draw do

  resources :attendees

  get 'welcome/index'
  root 'welcome#index'

end
