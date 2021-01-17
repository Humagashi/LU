# web elements and functions for page
class DroppablePage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @simple_tab = Element.new(:css, '#droppableExample-tab-simple')
    @accept_tab = Element.new(:css, '#droppableExample-tab-accept')
    @prevent_tab = Element.new(:css, '#droppableExample-tab-preventPropogation')
    @revert_tab = Element.new(:css, '#droppableExample-tab-revertable')

  end

  def visit
    Capybara.visit('droppable')
  end

  def go_to_tab(name)
    case name
    when 'Simple'
      @simple_tab.click
    when 'Accept'
      @axis_tab.click
    when 'Prevent'
      @container_tab.click
    when 'Revert'
      @cursor_style.click
    end
  end
end
