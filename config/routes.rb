Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'search', to: 'search#show'
  post 'search', to: 'search#index'
  get 'practice', to: 'search#p'
  get 'artist', to: 'artist#p'
  get 'songs', to: 'artist#songs' 


  get 'artist_a', to: 'artist#a'
  get 'artist_i', to: 'artist#i'
  get 'artist_u', to: 'artist#u'
  get 'artist_e', to: 'artist#e'
  get 'artist_o', to: 'artist#o'

  get 'artist_ka', to: 'artist#ka'
  get 'artist_ki', to: 'artist#ki'
  get 'artist_ku', to: 'artist#ku'
  get 'artist_ke', to: 'artist#ke'
  get 'artist_ko', to: 'artist#ko'

  get 'artist_sa', to: 'artist#sa'
  get 'artist_si', to: 'artist#si'
  get 'artist_su', to: 'artist#su'
  get 'artist_se', to: 'artist#se'
  get 'artist_so', to: 'artist#so'

  get 'artist_ta', to: 'artist#ta'
  get 'artist_ti', to: 'artist#ti'
  get 'artist_tu', to: 'artist#tu'
  get 'artist_te', to: 'artist#te'
  get 'artist_to', to: 'artist#to'

  get 'artist_na', to: 'artist#na'
  get 'artist_ni', to: 'artist#ni'
  get 'artist_nu', to: 'artist#nu'
  get 'artist_ne', to: 'artist#ne'
  get 'artist_no', to: 'artist#no'

  get 'artist_ha', to: 'artist#ha'
  get 'artist_hi', to: 'artist#hi'
  get 'artist_hu', to: 'artist#hu'
  get 'artist_he', to: 'artist#he'
  get 'artist_ho', to: 'artist#ho'
  
  get 'artist_ma', to: 'artist#ma'
  get 'artist_mi', to: 'artist#mi'
  get 'artist_mu', to: 'artist#mu'
  get 'artist_me', to: 'artist#me'
  get 'artist_mo', to: 'artist#mo'

  get 'artist_ya', to: 'artist#ya'
  get 'artist_yu', to: 'artist#yu'
  get 'artist_yo', to: 'artist#yo'

  get 'artist_ra', to: 'artist#ra'
  get 'artist_ri', to: 'artist#ri'
  get 'artist_ru', to: 'artist#ru'
  get 'artist_re', to: 'artist#re'
  get 'artist_ro', to: 'artist#ro'

  get 'artist_wa', to: 'artist#wa'
  get 'artist_nn', to: 'artist#nn'
  

end
