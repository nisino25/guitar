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
  patch '/save_song', to: 'application#save_song'
  patch '/take_song', to: 'application#take_song'
  patch '/save_following', to: 'application#save_following'
  patch '/song_list', to: 'friend#song_list'
  patch '/search_specific_song_list', to: 'friend#result'
  patch '/change_list', to: 'application#change_list'
  patch '/change_following_list', to: 'application#change_following_list'


  get 'song_of_following', to: 'friend#following'
  get 'friend', to: 'friend#index'
  get 'others_songs', to: 'friend#others_songs'
  get 'artist', to: 'artist#artist'
  get 'mylist', to: 'user#mylist'
  get 'mylist_artist', to: 'user#mylist_artist'
  get 'searchsong', to: 'searchsong#search'
  get 'artist_with_limit', to: 'user#artist_with_limit'
  get 'following_artist', to: 'friend#following_artist'
  get 'artist_following_with_limit', to: 'friend#artist_following_with_limit'



  resources :favsong, only: [:create, :destroy]

end
