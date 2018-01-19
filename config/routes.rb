Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

    root 'application#home'
    
    get  '/about',    to: 'application#about'
    get  '/contact',   to: 'application#contact'
    get  '/rooms',   to: 'application#rooms'
    get  '/features', to: 'application#features'
    get  '/signup',  to: 'users#new'
    post '/signup',  to: 'users#create'
    get  '/bookings',  to: 'bookings#new'
    post '/bookings',  to: 'bookings#create'
    get  '/invoices',  to: 'invoices#new'
    post '/invoices',  to: 'invoices#create'
    get  '/editbooking',  to: 'bookings#index'
    get  '/editinvoice',  to: 'invoices#index'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    
    resources :users
    resources :bookings
    resources :rooms
    resources :room_types
    resources :invoices
end
