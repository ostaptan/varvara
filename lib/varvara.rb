require "varvara/version"
require 'varvara/engine'
RUBY_VERSION >= '2.0.0' ? require('rails') : require('rails/routes') 

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

  def self.format_controllers(hash = all_controllers)
    # output -> array with controllers names
    hash.map {|c| c[:controller]}.uniq.compact.map {|c_name| "#{c_name.capitalize}Controller" unless c_name.split('/').size >= 2}  
  end 

  def format_controller_actions(hash = all_controllers)
     
  end 

  def self.all_controllers
    Rails.application.routes.routes.map do |route|
      {controller: route.defaults[:controller], action: route.defaults[:action]}
    end
  end
    
end
