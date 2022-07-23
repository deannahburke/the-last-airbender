require 'rails_helper'

RSpec.describe CharacterFacade do
  it 'creates Character poro' do
    character = CharacterFacade.get_details("Fire")

    expect(character).to be_an(Array)
    expect(character[0]).to be_an_instance_of(Character)
    expect(character.length).to eq(25)
  end
end
