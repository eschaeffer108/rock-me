# require 'rails_helper'
#
# feature "visitor sees a list of concerts" do
#   scenario "sees a list of concerts and a link to add a new concert" do
#     the_who = Concert.create(artist: "The Who", show_date: Date.new(2018-07-21), show_time: "7:00", description: "Come see the greatest band in the world, with original members Roger Daltrey and Pete Townshend! Plus Pete's brother Simon, and Ringo Starr's son, Zak Starkey, on Drums!")
#     alice_cooper = Concert.create(artist: "Alice Cooper", show_date: Date.new(2018-9-22), show_time: "8:00", description: "Come see the man, the myth, the legend: Alice Cooper! The king of shock rock will be performing his classic hits and you know he's bound to die on stage like he always does!")
#
#     visit concerts_path
#     expect(page).to have_content "The Who"
#     expect(page).to have_link "Alice Cooper"
#   end
#
#   scenario "vistior clicks on a link and is brought to that concert's show page" do
#     the_who = Concert.create(artist: "The Who", show_date: Date.new(2018-07-21), show_time: "7:00", description: "Come see the greatest band in the world, with original members Roger Daltrey and Pete Townshend! Plus Pete's brother Simon, and Ringo Starr's son, Zak Starkey, on Drums!")
#     visit concerts_path
#
#     click_link "The Who"
#
#     expect(page).to have_content the_who.artist
#     expect(page).to have_content the_who.show_date
#     expect(page).to have_content the_who.show_time
#     expect(page).to have_content the_who.description
#   end
# end
