Rails.application.routes.draw do
	get "varvara/" => "varvara/varvara#index"
    get "varvara/routes" => "varvara/routes#index"
    get "varvara/controllers" => "varvara/controllers#index"
    mount Varvara::Engine => "/varvara", :as => "varvara_engine"
end
    
