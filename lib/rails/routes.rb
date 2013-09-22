module ActionDispatch::Routing
  class Mapper
# Includes match_varvara method for routes generating. This method is responsible to
# generate all needed routes for varvara
    def mount_varvara
      get "varvara/routes" => "varvara/routes#index"
      mount Varvara::Engine => "/varvara", :as => "varvara_engine"
    end
  end
end
