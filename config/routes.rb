Rails.application.routes.draw do
	  get "varvara/" => "varvara/varvara#index", :as => "varvara_index"
    get "varvara/routes" => "varvara/varvara#routes", :as => "varvara_routes"
    get "varvara/controllers" => "varvara/varvara#controllers", :as => "varvara_controllers"
    get "varvara/models" => "varvara/varvara#models", :as => "varvara_models"
    mount Varvara::Engine => "/varvara", :as => "varvara_engine"
end
    
