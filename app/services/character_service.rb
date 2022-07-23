class CharacterService
  def self.conn
   Faraday.new(url: "https://last-airbender-api.herokuapp.com/")
  end

  def self.get_affiliated_characters(nation)
    response = conn.get("api/v1/characters?perPage=25&affiliation=#{nation}")
    results = JSON.parse(response.body, symbolize_names: true)
  end
end
