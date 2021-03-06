require 'rails_helper'

feature "visitor adds a new concert" do
  scenario "visitor adds a new concert successfully" do
    the_who = Concert.create(artist: "The Who", show_date: Date.new(2018-07-21), show_time: "7:00", description: "Come see the greatest band in the world, with original members Roger Daltrey and Pete Townshend! Plus Pete's brother Simon, and Ringo Starr's son, Zak Starkey, on Drums!")

    visit new_concert_path

    expect(page).to have_content "Add A New Concert"

    fill_in 'Artist', with: "REO Speedwagon"
    fill_in 'Description', with: "You've gotta roll with the changes!"
    click_button 'Add Concert'
  end
end
