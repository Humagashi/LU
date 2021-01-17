# web elements and functions for page
class ButtonsPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @double_click = Element.new(:css, '#doubleClickBtn')
    @right_click = Element.new(:css, '#rightClickBtn')
    @click = Element.new(:css, "[for='impressiveRadio']")
    @double_click_message = Element.new(:css, '#doubleClickMessage')
    @right_click_message = Element.new(:css, '#rightClickMessage')
    @click_message = Element.new(:css, '#dynamicClickMessage')
  end

  def visit
    Capybara.visit('buttons')
  end

  def double_click_me
    @double_click.double_click
    expect(page).to have_css(@double_click_message.path)
  end

  def right_click_me
    @right_click.right_click
    expect(page).to have_css(@right_click_message.path)
  end

  def dynamic_click
    click_button('Click Me')
  end

  def text_of_double_click
    @double_click_message.text
  end

  def text_of_right_click
    @right_click_message.text
  end

  def text_of_click
    @click_message.text
  end

end
