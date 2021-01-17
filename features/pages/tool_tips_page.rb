# web elements and functions for page
class ToolTipsPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    # button
    @hover_me_button = Element.new(:css, '#toolTipButton')
    @hover_me_btn_hover = Element.new(:css, '#buttonToolTip')
    # input box
    @input_box = Element.new(:css, '#toolTipTextField')
    @input_hover = Element.new(:css, ' #textFieldToolTip')
    # text in paragraph
    @text = Element.new(:css, "#texToolTopContainer [href='javascript:void(0)']")
    @text_hover = Element.new(:css, '#contraryTexToolTip')

  end

  def visit
    Capybara.visit('tool-tips')
  end

  def hover_button
    @hover_me_button.hover
    expect(page).to have_css(@hover_me_btn_hover.path)
    expect(@hover_me_btn_hover.text).to have_text "the Button"
  end

  def hover_input
    @input_box.hover
    expect(page).to have_css(@input_hover.path)
    expect(@input_hover.text).to have_text("the text field")
  end

  def hover_text
    first(@text.path).hover
    expect(page).to have_css(@text_hover.path)
    expect(@text_hover.text).to have_text("the Contrary")

    # @temp = all(@text).last
    #@temp.hover
    #expect(page).to have_css(@text_hover.path)
    #expect(@text_hover.text).to have_text("the 1.10.32")
  end

end
