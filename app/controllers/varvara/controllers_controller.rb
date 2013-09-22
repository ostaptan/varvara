module Varvara
  class ControllersController < Varvara::ApplicationController
    layout 'varvara/application'
    
    before_filter :require_local!

    def index
#     @controllers = Varvara.format_controllers
    end

  end
end