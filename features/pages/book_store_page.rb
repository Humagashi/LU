# web elements and functions for page
class BookStorePage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @search_box = Element.new(:css, '#searchBox')
    @user_name_value = Element.new(:css, '#userName-value')

    @go_back_to_store_btn = Element.new(:css, '.text-left #addNewRecordButton')
    @add_book = Element.new(:css, '.text-right #addNewRecordButton')

    @row_item = Element.new(:css, '.rt-tr-group')
  end

  def visit
    Capybara.visit('books')
  end

  def add_book(name)
    click_link(name)
    @add_book.click
    # webpage too slow sleep to catch up
    sleep 1
    page.driver.browser.switch_to.alert.accept
  end

  def go_back_to_store
    @go_back_to_store_btn.click
  end

  def search_for_book(name)
    @search_box.set("")
    @search_box.send_keys(name)
  end

end
