Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/index" => "products#index"
    get "product" => "products#info"
    get "/product/:id" => "products#info"
  end
  
end
