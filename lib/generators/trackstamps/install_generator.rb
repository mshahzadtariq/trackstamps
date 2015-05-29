module Trackstamps
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Add Trackstamps functionality to Rails based web applications"
      source_root File.expand_path("../templates", __FILE__)


      def inject_before_filter_for_current_user
        path = File.join("app", "controllers", "application_controller.rb")
        inject_into_file(path, :after => "class ApplicationController < ActionController::Base\n") do
          <<-RUBY
            before_filter :set_trackstamps_user
            def set_trackstamps_user
              Thread.current[:current_user] = current_user
            end
          RUBY
        end
      end
    end
  end
end