require 'api_constraints'

CityGemApi::Application.routes.draw do
  devise_for :sites
  # Api definition
  namespace :api, defaults: { format: :json },
                              constraints: { subdomain: 'api' }, path: '/'  do
    scope module: :v1,
              constraints: ApiConstraints.new(version: 1, default: true) do
      # We are going to list our resources here
      resources :sites, :only => [:show]
    end
  end
end
