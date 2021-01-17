# web elements and functions for page
class DragabblePage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @simple_tab = Element.new(:css, '#draggableExample-tab-simple')
    @axis_tab = Element.new(:css, '#draggableExample-tab-axisRestriction')
    @container_tab = Element.new(:css, '#draggableExample-tab-containerRestriction')
    @cursor_style = Element.new(:css, '#draggableExample-tab-cursorStyle')

  end

  def visit
    Capybara.visit('dragabble')
  end

  def go_to_tab(name)
    case name
    when 'Simple'
      @simple_tab.click
    when 'Axis'
      @axis_tab.click
    when 'Container'
      @container_tab.click
    when 'Cursos'
      @cursor_style.click
    end
  end
end
