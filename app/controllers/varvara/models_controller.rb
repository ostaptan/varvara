module Varvara
  class ModelsController < Varvara::ApplicationController
    layout 'varvara/application'
    
    before_filter :require_local!

    def index
      @models = Varvara.format_models
    end

  end
end