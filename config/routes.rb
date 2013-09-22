Rails.application.routes.draw do
  get "varvara/routes" => "varvara/routes#index"
  mount Varvara::Engine => "/varvara", :as => "varvara_engine"
end