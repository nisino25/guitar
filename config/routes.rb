Rails.application.routes.draw do
  
  devise_for :users
  root 'welcome#index'
  get 'search', to: 'search#show'
  post 'search', to: 'search#index'
  get 'practice', to: 'search#p'
  get 'songs', to: 'artist#songs' 
  post 'songs', to: 'artist#songs'
  patch '/save_link', to: 'application#save_link'
  patch '/save_hiragana', to: 'application#save_hiragana'
  get 'artist', to: 'artist#artist'

end
