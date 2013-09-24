Rails.application.routes.draw do
	  get "varvara/" => "varvara/varvara#index"
    get "varvara/routes" => "varvara/routes#index"
    get "varvara/controllers" => "varvara/controllers#index"
    get "varvara/models" => "varvara/models#index"
    mount Varvara::Engine => "/varvara", :as => "varvara_engine"
end
    
