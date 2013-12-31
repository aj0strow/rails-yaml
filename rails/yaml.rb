require 'yaml'

module Rails
  class << self
    def yaml name
      filename = "#{name}.yml"
      path = root.join configuration.yaml, filename
      config = YAML.load_file path
      config.fetch Rails.env, config
    end
    
    alias_method :yml, :yaml
  end
  
  unless configuration.respond_to? :yaml
    configuration.yaml = %w(config/settings config).find do |path|
      Dir.exists? root.join(path)
    end
  end
end