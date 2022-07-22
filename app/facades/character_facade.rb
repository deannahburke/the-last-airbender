class CharacterFacade
  def self.get_details(nation)
    json = CharacterService.get_affiliated_characters(nation)
    json.map { |data| Character.new(data) }
  end
end
