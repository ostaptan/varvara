module Varvara
  class ControllersController < Varvara::ApplicationController
    layout 'varvara/application'
    
    before_filter :require_local!

    def index
      @controllers = Varvara.all_controllers
    end

  end
end