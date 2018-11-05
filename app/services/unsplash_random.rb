class UnsplashRandom
  def self.image(category)
    response = query(category)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.query(search_term)
    conn.get do |req|
      req.url '/photos/random/'
      req.params['query'] = search_term
      req.params['client_id'] = Rails.application.credentials.unsplash[:client_id]
    end
  end

  def self.conn
    Faraday.new(:url => 'https://api.unsplash.com') do |faraday|
      faraday.request  :url_encoded
      faraday.response :logger
      faraday.adapter  Faraday.default_adapter
    end
  end
end
