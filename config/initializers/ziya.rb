# Pull in the ZiYa gem framework
# gem "ziya", "~> 2.1.0"
# require 'ziya'

# NOTE !! Replace the above to the official github gem
gem "derailed-ziya", "~> 2.1.0"
require 'ziya'

# Initializes the ZiYa Framework
Ziya.initialize( :logger         => RAILS_DEFAULT_LOGGER,
                 :helpers_dir    => File.join( File.dirname(__FILE__), %w[.. .. app helpers ziya] ),
                 :designs_dir    => File.join( File.dirname(__FILE__), %w[.. .. public gauges designs] ),
                 :map_themes_dir => File.join( File.dirname(__FILE__), %w[.. .. public maps themes] ),
                 :themes_dir     => File.join( File.dirname(__FILE__), %w[.. .. public charts themes]) )