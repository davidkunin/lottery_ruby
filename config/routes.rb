Rails.application.routes.draw do

  root 'home#homepage'

  get 'home/homepage'

  get 'home/lotterypage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
