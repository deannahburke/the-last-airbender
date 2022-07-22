require 'rails_helper'

RSpec.describe "Members Index Page", type: :feature do
  it 'displays members for a given nation' do
    visit "/"

    select "Fire Nation", from: "nation"

    click_button("Search For Members")

    expect(page).to have_content("Chan (Fire Nation admiral)")
  end
end
