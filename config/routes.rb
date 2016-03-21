Rails.application.routes.draw do

  root "home#index"
  post "/models" => "models#index"

end
