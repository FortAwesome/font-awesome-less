module Font
  module Awesome
    module Less
      class Engine < ::Rails::Engine
        initializer 'font-awesome-less.assets.precompile' do |app|
          app.config.assets.precompile += %w(
            fontawesome-webfont.eot fontawesome-webfont.svg
            fontawesome-webfont.ttf fontawesome-webfont.woff)
        end
      end
    end
  end
end