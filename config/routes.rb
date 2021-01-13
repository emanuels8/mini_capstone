Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "ropes" => "products#sell_rope"
    get "first_rope" => "products#first_rope"
    get "second_rope" => "products#second_rope"
    get "third_rope" => "products#third_rope"
  end
end
