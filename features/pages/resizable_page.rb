# web elements and functions for page
class ResizablePage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @restriction_box = Element.new(:css, '#resizableBoxWithRestriction')
    @box = Element.new(:css, '#resizable')
  end

  def visit
    Capybara.visit('resizable')
  end

end
