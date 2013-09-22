module Varvara
  class RoutesController < Varvara::ApplicationController
    layout 'varvara/application'

    before_filter :require_local!

    def index
      @routes = Varvara.format_routes
    end

  end
end

