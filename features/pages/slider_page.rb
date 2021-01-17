# web elements and functions for page
class SliderPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @slider_btn = Element.new(:css, '.range-slider')
    @slider_value_input_box = Element.new(:css, '#sliderValue')
  end

  def visit
    Capybara.visit('slider')
  end

  def drag
    @slider_btn.drag_to(@slider_value_input_box.path)
  end

end
