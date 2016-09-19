Rails.application.routes.draw do

  resources :quotations
  get 'basics2/puresql'

  get 'basics1/divide-by-zero'
  get 'basics1/top-ten-youtube'

  get 'basics2/index'

  get 'basics1/index'

  root 'home#index'
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
