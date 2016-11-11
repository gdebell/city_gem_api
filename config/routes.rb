require 'api_constraints'

CityGemApi::Application.routes.draw do
  resources :sites
  root 'sites#index'

  match '*all' => 'application#cors', via: :options

end
