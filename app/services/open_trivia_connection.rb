class OpenTriviaConnection
  def self.get_game_data
    response = self.connection
    JSON.parse(response.body)["results"]
  end

  def self.connection
    Faraday.get 'https://opentdb.com/api.php?amount=10&encode=base64'
  end
end
