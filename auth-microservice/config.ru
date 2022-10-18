require_relative 'config/environment'

use Rack::Ougai::LogRequests, Application.logger

run Rack::URLMap.new(
  '/v1/signup' => UserRoutes,
  '/v1/login' => UserSessionRoutes
)
