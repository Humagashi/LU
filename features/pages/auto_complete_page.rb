# web elements and functions for page
class AutoCompletePage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @multiple_auto = Element.new(:css, '#autoCompleteMultipleContainer')
    @single_auto = Element.new(:css, '#autoCompleteSingleContainer')
  end

  def visit
    Capybara.visit('auto-complete')
  end
end
