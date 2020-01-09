require './config/environment'

require_relative 'app/controllers/application_controller'
require_relative 'app/controllers/artists_controller'
require_relative 'app/controllers/genres_controller'
require_relative 'app/controllers/songs_controller'

begin
  fi_check_migration

  use Rack::MethodOverride
  run ApplicationController
  run ArtistsController
  run GenresController
  run SongsController
  
  
rescue ActiveRecord::PendingMigrationError => err
  STDERR.puts err
  exit 1
end
