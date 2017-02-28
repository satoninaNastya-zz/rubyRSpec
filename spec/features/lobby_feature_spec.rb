require 'spec_helper'
require 'slizio_page'

describe "Lobby button cheks : " do
  before(:all) do  #To skip window new level
    @lobby = SlizioPage.new
    @lobby.load
    @lobby.close_new_level_window()
  end
  before(:each) do # Refresh the page before each tests
    @lobby.load
  end

  it "Tutor button works " do
    @lobby.how_to_play_button.click
    @lobby.wait_for_tutor_window(10)
    expect(@lobby).to have_tutor_window
  end

  it "Inventory button works" do
    @lobby.menu.inventory_button.click
    @lobby.wait_for_inventory_window(10)
    expect(@lobby).to have_inventory_window
  end

  it "Play button works  " do
    @lobby.play_button.click
    @lobby.wait_for_tutor_window(10)
    expect(@lobby).to have_tutor_window
  end

 it "Roulette button works" do
   @lobby.roulette_button.click
   @lobby.wait_for_roulette_window(10)
   expect(@lobby).to have_roulette_window
 end

end
