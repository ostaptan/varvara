module Varvara
  class VarvaraController < Varvara::ApplicationController
    layout 'varvara/application'
    
    before_filter :require_local!

    def index
    end
    
    def routes
      @routes = Varvara.format_routes
    end
    
    def controllers
      @controllers = Varvara.format_controllers
    end
    
    def models
      @models = Varvara.format_models
    end

  end
end