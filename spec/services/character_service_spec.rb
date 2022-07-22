require 'rails_helper'

RSpec.describe CharacterService do
  describe 'api endpoint' do
    it 'can retrieve data from characters api endpoint' do
      json = CharacterService.get_affiliated_characters("Fire")

      expect(json).to be_a(Array)
      expect(json[0]).to have_key(:allies)
      expect(json[0]).to have_key(:enemies)
      expect(json[0]).to have_key(:name)
      expect(json[0]).to have_key(:affiliation)
    end
  end
end
