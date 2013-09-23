Rails.application.routes.draw do
	get "varvara/" => "varvara/varvara#index", :as => "varvara_index"
    get "varvara/routes" => "varvara/routes#index", :as => "varvara_routes"
    get "varvara/controllers" => "varvara/controllers#index", :as => "varvara_controllers"
    mount Varvara::Engine => "/varvara", :as => "varvara_engine"
end
    
