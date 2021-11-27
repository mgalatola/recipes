Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :recipes do
    collection do
      get :my
    end
  end
  
  resources :ingredients

  namespace 'admin' do
    resources :users
  end

  root 'recipes#index'
end
