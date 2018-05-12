require 'rails_helper'

feature "visitor adds a new comment" do
  scenario "visitor adds a new comment successfully" do
    the_who = Concert.create(artist: "The Who", show_date: Date.new(2018-07-21), show_time: "7:00", description: "Come see the greatest band in the world, with original members Roger Daltrey and Pete Townshend! Plus Pete's brother Simon, and Ringo Starr's son, Zak Starkey, on Drums!")

    visit new_concert_comment_path(the_who)

    fill_in 'Body', with: "This looks like a good show. Anyone interested in going?"
    click_button 'Post Comment'
    expect(page).to have_content "Let us know if you plan on attending the show and anything else you may want to add about the band."
  end

  scenario "visitor does not fill in comment body" do
    the_who = Concert.create(artist: "The Who", show_date: Date.new(2018-07-21), show_time: "7:00", description: "Come see the greatest band in the world, with original members Roger Daltrey and Pete Townshend! Plus Pete's brother Simon, and Ringo Starr's son, Zak Starkey, on Drums!")
    visit new_concert_comment_path(the_who)

    click_button 'Post Comment'
    expect(page).to have_content "Body can't be blank"
  end
end
