require "vacancy/engine"

module Vacancy
  mattr_accessor :role_image_styles
  @@logo_styles = {}

  mattr_accessor :admin_enabled
  @@admin_enabled = [:department, :role]

  mattr_accessor :role_cache_sweeper
  @@role_cache_sweeper = false

  mattr_accessor :department_cache_sweeper
  @@department_cache_sweeper = false

  class Engine < Rails::Engine
    isolate_namespace Vacancy

    initializer :vacancy do
      ActiveAdmin.application.load_paths.unshift Dir[Vacancy::Engine.root.join('app', 'admin')] if defined?(ActiveAdmin)
    end
  end

  def self.config(&block)
    yield self if block
    return self
  end
end
