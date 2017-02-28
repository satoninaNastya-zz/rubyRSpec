require 'rspec'
require 'slizio_page'

describe 'Buy check; ' do
  before(:all) do
    @slizio = SlizioPage.new
    @slizio.load
    @slizio.close_new_level_window()
  end
  before(:each) do
    @slizio.load
  end

  it "Buy 1 apple pack", focus: true do
    coin = @slizio.menu.user_coins.text.to_i
    @slizio.menu.inventory_button.click
    count = @slizio.inventory.apple_count.text.to_i
    @slizio.inventory.buy_1_pack_apple
    @slizio.inventory.apple_count.text.to_i.should eq(count+1)
    @slizio.close_inventary()
    @slizio.menu.user_coins.text.to_i.should eq(coin-5)
  end

  it "Buy 2 apple pack" do
    coin = @slizio.menu.user_coins.text.to_i
    @slizio.menu.inventory_button.click
    count = @slizio.inventory.apple_count.text.to_i
    @slizio.inventory.buy_2_pack_apple
    @slizio.inventory.apple_count.text.to_i.should eq(count+11)
    @slizio.close_inventary()
    @slizio.menu.user_coins.text.to_i.should eq(coin-39)
  end

  it "Buy 3 apple pack" do
    coin = @slizio.menu.user_coins.text.to_i
    @slizio.menu.inventory_button.click
    count = @slizio.inventory.apple_count.text.to_i
    @slizio.inventory.buy_3_pack_apple
    @slizio.inventory.apple_count.text.to_i.should eq(count+99)
    @slizio.close_inventary()
    @slizio.menu.user_coins.text.to_i.should eq(coin-299)
  end

  it "Buy 1 faster pack" do
    coin = @slizio.menu.user_coins.text.to_i
    @slizio.menu.inventory_button.click
    count = @slizio.inventory.faster_count.text.to_i
    @slizio.inventory.buy_1_pack_faster
    @slizio.inventory.faster_count.text.to_i.should eq(count+1)
    @slizio.close_inventary()
    @slizio.menu.user_coins.text.to_i.should eq(coin-5)
  end

  it "Buy 2 faster pack" do
    coin = @slizio.menu.user_coins.text.to_i
    @slizio.menu.inventory_button.click
    count = @slizio.inventory.faster_count.text.to_i
    @slizio.inventory.buy_2_pack_faster
    @slizio.inventory.faster_count.text.to_i.should eq(count+10)
    @slizio.close_inventary()
    @slizio.menu.user_coins.text.to_i.should eq(coin-39)
  end

  it "Buy 3 faster pack" do
    coin = @slizio.menu.user_coins.text.to_i
    @slizio.menu.inventory_button.click
    count = @slizio.inventory.faster_count.text.to_i
    @slizio.inventory.buy_3_pack_faster
    @slizio.inventory.faster_count.text.to_i.should eq(count+99)
    @slizio.close_inventary()
    @slizio.menu.user_coins.text.to_i.should eq(coin-299)
  end

  it "Buy 1 locator pack" do
    coin = @slizio.menu.user_coins.text.to_i
    @slizio.menu.inventory_button.click
    count = @slizio.inventory.locator_count.text.to_i
    @slizio.inventory.buy_1_pack_locator
    @slizio.inventory.locator_count.text.to_i.should eq(count+1)
    @slizio.close_inventary()
    @slizio.menu.user_coins.text.to_i.should eq(coin-5)
  end

  it "Buy 2 locator pack" do
    coin = @slizio.menu.user_coins.text.to_i
    @slizio.menu.inventory_button.click
    count = @slizio.inventory.locator_count.text.to_i
    @slizio.inventory.buy_2_pack_locator
    @slizio.inventory.locator_count.text.to_i.should eq(count+10)
    @slizio.close_inventary()
    @slizio.menu.user_coins.text.to_i.should eq(coin-39)
  end

  it "Buy 3 locator pack" do
    coin = @slizio.menu.user_coins.text.to_i
    @slizio.menu.inventory_button.click
    count = @slizio.inventory.locator_count.text.to_i
    @slizio.inventory.buy_3_pack_locator
    @slizio.inventory.locator_count.text.to_i.should eq(count+99)
    @slizio.close_inventary()
    @slizio.menu.user_coins.text.to_i.should eq(coin-299)
  end

  it "Buy 1 mask pack" do
    coin = @slizio.menu.user_coins.text.to_i
    @slizio.menu.inventory_button.click
    count = @slizio.inventory.mask_count.text.to_i
    @slizio.inventory.buy_1_pack_mask
    @slizio.inventory.mask_count.text.to_i.should eq(count+1)
    @slizio.close_inventary()
    @slizio.menu.user_coins.text.to_i.should eq(coin-5)
  end

  it "Buy 2 mask pack" do
    coin = @slizio.menu.user_coins.text.to_i
    @slizio.menu.inventory_button.click
    count = @slizio.inventory.mask_count.text.to_i
    @slizio.inventory.buy_2_pack_mask
    @slizio.inventory.mask_count.text.to_i.should eq(count+10)
    @slizio.close_inventary()
    @slizio.menu.user_coins.text.to_i.should eq(coin-39)
  end

  it "Buy 3 mask pack" do
    coin = @slizio.menu.user_coins.text.to_i
    @slizio.menu.inventory_button.click
    count = @slizio.inventory.mask_count.text.to_i
    @slizio.inventory.buy_3_pack_mask
    @slizio.inventory.mask_count.text.to_i.should eq(count+99)
    @slizio.close_inventary()
    @slizio.menu.user_coins.text.to_i.should eq(coin-299)
  end

end
