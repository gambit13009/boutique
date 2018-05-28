# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( jquery.min.js )
Rails.application.config.assets.precompile += %w( popper.min.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( slidebar.js )
Rails.application.config.assets.precompile += %w( classie.js )
Rails.application.config.assets.precompile += %w( bootstrap-growl.min.js )
Rails.application.config.assets.precompile += %w( scrollpos-styler.js )
Rails.application.config.assets.precompile += %w( adaptive-backgrounds.js )
Rails.application.config.assets.precompile += %w( jquery.countdown.min.js )
Rails.application.config.assets.precompile += %w( dropzone.min.js )
Rails.application.config.assets.precompile += %w( jquery.easypiechart.min.js )
Rails.application.config.assets.precompile += %w( jquery.fancybox.min.js )
Rails.application.config.assets.precompile += %w( flatpickr.min.js )
Rails.application.config.assets.precompile += %w( flip.min.js )
Rails.application.config.assets.precompile += %w( footer-reveal.min.js )
Rails.application.config.assets.precompile += %w( jquery.gradientify.min.js )
Rails.application.config.assets.precompile += %w( headroom.min.js )
Rails.application.config.assets.precompile += %w( jquery.headroom.min.js )
Rails.application.config.assets.precompile += %w( input-mask.min.js )
Rails.application.config.assets.precompile += %w( instafeed.js )
Rails.application.config.assets.precompile += %w( jquery.countTo.js )
Rails.application.config.assets.precompile += %w( nouislider.min.js )
Rails.application.config.assets.precompile += %w( paraxify.min.js )
Rails.application.config.assets.precompile += %w( select2.min.js )
Rails.application.config.assets.precompile += %w( sticky-kit.min.js )
Rails.application.config.assets.precompile += %w( swiper.min.js )
Rails.application.config.assets.precompile += %w( autosize.min.js )
Rails.application.config.assets.precompile += %w( typeahead.bundle.min.js )
Rails.application.config.assets.precompile += %w( typed.min.js )
Rails.application.config.assets.precompile += %w( vide.min.js )
Rails.application.config.assets.precompile += %w( viewportchecker.min.js )
Rails.application.config.assets.precompile += %w( wow.min.js )
Rails.application.config.assets.precompile += %w( isotope.min.js )
Rails.application.config.assets.precompile += %w( imagesloaded.pkgd.min.js )
Rails.application.config.assets.precompile += %w( jquery.themepunch.tools.min.js )
Rails.application.config.assets.precompile += %w( jquery.themepunch.revolution.min.js )
Rails.application.config.assets.precompile += %w( revolution-slider-shop-home-deco.js )
Rails.application.config.assets.precompile += %w( revolution.extension.actions.min.js )
Rails.application.config.assets.precompile += %w( revolution.extension.carousel.min.js )
Rails.application.config.assets.precompile += %w( revolution.extension.kenburn.min.js )
Rails.application.config.assets.precompile += %w( revolution.extension.layeranimation.min.js )
Rails.application.config.assets.precompile += %w( revolution.extension.migration.min.js )
Rails.application.config.assets.precompile += %w( revolution.extension.navigation.min.js )
Rails.application.config.assets.precompile += %w( revolution.extension.parallax.min.js )
Rails.application.config.assets.precompile += %w( revolution.extension.slideanims.min.js )
Rails.application.config.assets.precompile += %w( revolution.extension.video.min.js )
Rails.application.config.assets.precompile += %w( boomerang.min.js )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
