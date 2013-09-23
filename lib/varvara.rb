require "varvara/version"
require 'varvara/engine'
if RUBY_VERSION >= '2.0.0'
  require 'rails'
else
  require 'rails/routes'   


module Varvara
  
  begin
    require 'rails/application/route_inspector'
    ROUTE_INSPECTOR = Rails::Application::RouteInspector.new
  rescue LoadError
    require 'action_dispatch/routing/inspector'
    ROUTE_INSPECTOR = ActionDispatch::Routing::RoutesInspector.new([])
  end

  def self.format_routes(routes = all_routes)
    ROUTE_INSPECTOR.send :collect_routes, routes
  end

  def self.all_routes
    Rails.application.reload_routes!
    Rails.application.routes.routes
  end  
    
end
