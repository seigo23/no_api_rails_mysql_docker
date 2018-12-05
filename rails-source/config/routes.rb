Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'sample/index', to:'sample#index'
  get 'sample/list'
  get 'sample/app_var'
end
