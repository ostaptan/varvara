module Varvara
  class VarvaraController < Varvara::ApplicationController
    layout 'varvara/application'
    
    before_filter :require_local!

    def index
    end

  end
end