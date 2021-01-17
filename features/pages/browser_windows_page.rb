# web elements and functions for page
class BrowserWindowsPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @new_tab = Element.new(:css, '#tabButton')
    @new_window = Element.new(:css, '#windowButton')
    @new_window_message = Element.new(:css, '#messageWindowButton')
    @new_window_text = Element.new(:css, 'body')

  end

  def visit
    Capybara.visit('browser-windows')
  end

  def open_new_tab
    @new_tab.click
  end

  def open_new_window
    @new_window.click
  end

  def open_new_window_message
    @new_window_message.click
  end


end
