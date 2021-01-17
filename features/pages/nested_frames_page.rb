# web elements and functions for page
class NestedFramesPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
  end

  def visit
    Capybara.visit('nestedframes')
  end

end
