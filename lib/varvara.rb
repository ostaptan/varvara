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
  
  def self.format_models(models = all_models)
    models.map {|mod| mod.split('::').last.constantize }
  end

  def self.format_controllers(hash = all_controllers)
    # output -> array with controllers
    hash.map do |c| 
      c[:controller]
    end.uniq.compact.map do |c_name| 
      self.controller_from_name(c_name) 
    end.compact  
  end 
  
  def self.controller_from_name(c_name)
    "#{c_name.camelize}Controller".constantize
  end
  
  private 
  
  def self.all_routes
    Rails.application.reload_routes!
    Rails.application.routes.routes
  end

  def self.all_controllers
    Rails.application.routes.routes.map do |route|
      {controller: route.defaults[:controller], action: route.defaults[:action]}
    end
  end
  
  def self.all_models
    Dir["#{Rails.root}/app/models/**/*.rb"].map do |f|
      f.chomp('.rb').camelize # works with namespaces e.g. Foo::Bar::MyClass
    end   
  end
    
end
