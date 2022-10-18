module GeocoderService
  module Api
    def update_coordinates(id, coordinates)
      payload = { id: id, coordinates: coordinates }.to_json
      headers = { 'Request-ID' => Thread.current[:request_id] }
      connection.post('update_coordinates', payload, headers)
    end
  end
end
