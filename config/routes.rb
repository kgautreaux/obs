Obs::Application.routes.draw do
  get 'obs' => 'obs#index'
  get 'templates/index', :to => TemplatesController.action(:index)
  get 'templates/edit', :to  => TemplatesController.action(:edit)
  get 'templates/new', :to  => TemplatesController.action(:new)

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end
