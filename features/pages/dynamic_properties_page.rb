# web elements and functions for page
class DynamicPropertiesPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @enable_after_btn = Element.new(:css, '#enableAfter')
    @color_change_btn = Element.new(:css, '#colorChange')
    @visible_after_btn = Element.new(:css, '#visibleAfter')
  end

  def visit
    Capybara.visit('dynamic-properties')
  end


end
