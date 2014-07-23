class Brewerydb
  include HTTParty

  base_uri "http://api.brewerydb.com/v2"

  def initialize(key)
    raise "You need to provide a BreweryDB API Key" if key.nil?
    @key = key
  end

  def search(query)
    self.class.get '/search', query: {
      type: 'beer',
      q: query,
      key: @key,
      format: 'json'
    }
  end

end