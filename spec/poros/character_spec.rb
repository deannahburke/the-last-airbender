require 'rails_helper'

RSpec.describe Character do
  it 'exists with attributes' do
    data = {
        "_id": "5cf5679a915ecad153ab68fd",
        "allies": [
            "Ozai"
        ],
        "enemies": [
            "Earth Kingdom"
        ],
        "name": "Chan (Fire Nation admiral)",
        "affiliation": "Fire Nation Navy"}
    new_character = Character.new(data)
    expect(new_character.name).to eq("Chan (Fire Nation admiral)")
    expect(new_character.allies).to eq(["Ozai"])
    expect(new_character.enemies).to eq(["Earth Kingdom"])
    expect(new_character.affiliation).to eq("Fire Nation Navy")
  end
end
