require "varvara/version"
require 'builder' unless defined?(Builder)
require 'varvara/builder'

module Varvara
  def self.launch
    html = Builder.generate_report
    report = File.new('report.html', 'w+').puts html
  end       
end
