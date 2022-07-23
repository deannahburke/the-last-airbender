class CharacterFacade
  def self.get_details(nation)
    json = CharacterService.get_affiliated_characters(nation)
    # total_members = json.length
    json[0..24].map { |data| Character.new(data) }
  end
end
