module FontAwesome
  module Less
    class << self
      def load!
        register_rails_engine if rails?
      end

      def gem_path
        @gem_path ||= File.expand_path('..', File.dirname(__FILE__))
      end

      def stylesheets_path
        File.join(assets_path, 'stylesheets')
      end

      def fonts_path
        File.join(assets_path, 'fonts')
      end

      def assets_path
        @assets_path ||= File.join(gem_path, 'assets')
      end

      def rails?
        defined?(::Rails)
      end

      private

      def register_rails_engine
        require 'less-rails'
        require 'font_awesome/less/rails/engine'
        require 'font_awesome/less/rails/railtie'
      end
    end
  end
end

FontAwesome::Less.load!
