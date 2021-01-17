# web elements and functions for page
class RadioButtonPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @yes_btn = Element.new(:css, "[for='yesRadio']")
    @no_btn = Element.new(:css, "[for='noRadio']")
    @impressive_btn = Element.new(:css, "[for='impressiveRadio']")
    @output_text = Element.new(:css, '.text-success')
  end

  def visit
    Capybara.visit('radio-button')
  end

  def click_yes
    @yes_btn.click
    expect(@output_text.text).to have_text 'Yes'
  end

  def click_impressive
    @impressive_btn.click
    expect(@output_text.text).to have_text 'Impressive'
  end

  def click_no
    @no_btn.click
    expect(page).not_to have_css(@output_text.path)
  end

end
