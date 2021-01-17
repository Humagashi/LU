# web elements and functions for page
class MenuPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @list_item = Element.new(:css, "#nav [href='#']")
  end

  def visit
    Capybara.visit('menu')
  end

end
