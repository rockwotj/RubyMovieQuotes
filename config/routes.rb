Rails.application.routes.draw do
  #resources :moviequotes, controller: 'MovieQuotesController'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'movie_quotes#index'

  # Example of regular route:
     post '/insertquote' => 'movie_quotes#insert'
     post '/deletequote' => 'movie_quotes#destroy'

end
