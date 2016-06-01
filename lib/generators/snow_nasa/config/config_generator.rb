module SnowNasa
    module Generators
        
        class ConfigGenerator < ::Rails::Generators::Base
            source_root File.expand_path('../templates', __FILE__)
            
            def generate_config
                template "config.rb.erb", "config/initializers/snow_nasa.rb"
            end
        end
    end
end
