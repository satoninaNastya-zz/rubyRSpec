
class Inventary < SitePrism::Section

  element :buy_apple_button, "._apple .js-inv-buy"
  element :buy_apple_button_1, "div[name='apple1']"
  element :buy_apple_button_2, "div[name='apple2']"
  element :buy_apple_button_3, "div[name='apple3']"
  element :apple_count, "._apple .modal-inventory-item-block .modal-inventory-item-block-count .js-inv-num"

  def buy_1_pack_apple()
    buy_apple_button.click
    buy_apple_button_1.click
  end

  def buy_2_pack_apple()
    buy_apple_button.click
    buy_apple_button_2.click
  end

  def buy_3_pack_apple()
    buy_apple_button.click
    buy_apple_button_3.click
  end

  element :buy_faster_button, "._faster .js-inv-buy"
  element :buy_faster_button_1, "div[name='speedup1']"
  element :buy_faster_button_2, "div[name='speedup2']"
  element :buy_faster_button_3, "div[name='speedup3']"
  element :faster_count, "._faster .modal-inventory-item-block .modal-inventory-item-block-count .js-inv-num"

  def buy_1_pack_faster()
    buy_faster_button.click
    buy_faster_button_1.click
  end

  def buy_2_pack_faster()
    buy_faster_button.click
    buy_faster_button_2.click
  end

  def buy_3_pack_faster()
    buy_faster_button.click
    buy_faster_button_3.click
  end

  element :buy_locator_button, "._locator .js-inv-buy"
  element :buy_locator_button_1, "div[name='locator1']"
  element :buy_locator_button_2, "div[name='locator2']"
  element :buy_locator_button_3, "div[name='locator3']"
  element :locator_count, "._locator .modal-inventory-item-block .modal-inventory-item-block-count .js-inv-num"

  def buy_1_pack_locator()
    buy_locator_button.click
    buy_locator_button_1.click
  end

  def buy_2_pack_locator()
    buy_locator_button.click
    buy_locator_button_2.click
  end

  def buy_3_pack_locator()
    buy_locator_button.click
    buy_locator_button_3.click
  end

  element :buy_mask_button, "._mask .js-inv-buy"
  element :buy_mask_button_1, "div[name='mask1']"
  element :buy_mask_button_2, "div[name='mask2']"
  element :buy_mask_button_3, "div[name='mask3']"
  element :mask_count, "._mask .modal-inventory-item-block .modal-inventory-item-block-count .js-inv-num"

  def buy_1_pack_mask()
    buy_mask_button.click
    buy_mask_button_1.click
  end

  def buy_2_pack_mask()
    buy_mask_button.click
    buy_mask_button_2.click
  end

  def buy_3_pack_mask()
    buy_mask_button.click
    buy_mask_button_3.click
  end

end