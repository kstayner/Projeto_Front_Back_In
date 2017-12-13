# Class ApiSwapi
class ApiSwapi
  include HTTParty
  base_uri ENVIRONMENT['api']
  format :json

  def initialize
    @http_headers = {
      'Content-Type' => 'application/json; charset=UTF-8',
      'Connection' => 'keep-alive'
    }
  end

  def search_films
    self.class.get('/films', headers: @http_headers)
  end

  def search_planets
    self.class.get('/planets', headers: @http_headers)
  end
end
