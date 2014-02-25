require 'font_awesome/less/rails/helpers'

module FontAwesome
  module Less
    module Rails
      class Railtie < ::Rails::Railtie
       initializer "font-awesome-sass.view_helpers" do
          ActionView::Base.send :include, ViewHelpers
        end
      end
    end
  end
end
