# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
require 'rack/cors'
use Rack::Cors do
  allow do
    origins 'https://winnow-client.herokuapp.com', 'http://localhost:3000'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end
run Rails.application
