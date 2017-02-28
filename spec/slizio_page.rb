require 'spec_helper'
require 'menu_section'
require 'inventary'

class SlizioPage < SitePrism::Page
  set_url "https://static.sliz.io?api_url=https://api.vk.com/api.php&api_id=5487220&api_settings=2097411&viewer_id=12209814&viewer_type=2&sid=d39a4d8d41878f5ec56d9a913432b6864983edb5fdf50be4dccd2d71b6a29ed1d7b5d73c19b163aae3b6d&secret=689b723241&access_token=fc26c7187a22b62b344b2ad902095747c45fffecb8b4cb2d6426e2a95ae6c2db79225d08743efdc4481e5&user_id=12209814&group_id=0&is_app_user=1&auth_key=99f3e56801eb99325f296559944b3250&language=0&parent_language=0&ad_info=ElsdCQBeQ1VtDQVfAwJSXHt5AUQ8HTJXUVBBJRVBNwoIFjI2HA8H&is_secure=1&ads_app_id=5487220_c39544cfd1b7ae211b&referrer=menu&lc_name=1668ae8d&hash="

  element :username, "#quick_email"
  element :password, "#quick_pass"
  element :login_button, "#quick_login_button"
  def login_with(username, password)
    self.username.set username
    self.password.set password
    login_button.click
  end


  section :menu, MenuSection, "#userInfo"

  section :inventory, Inventary, ".modal-inventory-shopbox"

  element :inventary_close_button, "div[onclick='return inventory.close()']"
  def close_inventary()
    inventary_close_button.click
  end

  element :new_level_window_close_button, "div[onclick='return newlevel.close()']"
  def close_new_level_window()
    new_level_window_close_button.click
  end


  element :play_button, "#playButton"

  element :how_to_play_button, ".level-howtoplay"
  element :tutor_window, ".modal-tutor-slides"


  element :inventory_window, ".modal-inventory-has-wrap"

  element :roulette_button, "#lobbyBtn"
  element :roulette_window, ".modal-roulette-wheel"


end
