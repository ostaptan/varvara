Rails.application.routes.draw do
	  get "varvara/" => "varvara/varvara#index"
    get "varvara/routes" => "varvara/varvara#routes"
    get "varvara/controllers" => "varvara/varvara#controllers"
    get "varvara/models" => "varvara/varvara#models"
    mount Varvara::Engine => "/varvara", :as => "varvara_engine"
end
    
