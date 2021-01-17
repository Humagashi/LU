# web elements and functions for page
class TabsPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @tab_what = Element.new(:css, '#demo-tab-what')
    @tab_origin = Element.new(:css, '#demo-tab-origin')
    @tab_use = Element.new(:css, '#demo-tab-use')
    @tab_more = Element.new(:css, '#demo-tab-more')
  end

  def visit
    Capybara.visit('accordian')
  end

  def open_tab(title)
    case title
    when 'What'
      @tab_what.click
    when 'Origin'
      @tab_origin.click
    when 'Use'
      @tab_use.click
    when 'More'
      @tab_more.click
    end

  end

end
