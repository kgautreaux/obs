Obs::Application.routes.draw do
  get 'obs' => 'obs#index'
  get 'templates/index' => lambda { |hash| [200, {}, ["<p ng-model='name'>Fucking Works {{name}}!</p>"]]} 
  get 'templates/edit' => 'templates#edit'
  get 'templates/new' => 'templates#new'

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end
