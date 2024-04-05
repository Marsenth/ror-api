Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "rails/health#show", as: :rails_health_check

  scope '/categories' do
    get '/', action: :findAll, controller: 'categories'
    get '/:id', action: :findOne, controller: 'categories'
    post '/', action: :create, controller: 'categories'
    put '/:id', action: :update, controller: 'categories'
    delete '/:id', action: :delete, controller: 'categories'
  end

  scope '/products' do
    get '/', action: :findAll, controller: 'products'
    get '/:id', action: :findOne, controller: 'products'
    post '/', action: :create, controller: 'products'
    put '/:id', action: :update, controller: 'products'
    delete '/:id', action: :delete, controller: 'products'
  end
end
