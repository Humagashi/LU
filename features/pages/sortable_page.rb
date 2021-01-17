# web elements and functions for page
class SortablePage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @list_tab = Element.new(:css, '#demo-tab-list')
    @grid_tab = Element.new(:css, '#demo-tab-grid')
  end

  def visit
    Capybara.visit('sortable')
  end

end
