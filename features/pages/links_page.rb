# web elements and functions for page
class LinksPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    # basic
    @home = Element.new(:css, '#simpleLink')
    @dynamic_home = Element.new(:css, '#dynamicLink')
    # api links
    @created = Element.new(:css, '#created')
    @no_content= Element.new(:css, '#no-content')
    @moved = Element.new(:css, '#moved')
    @bad_request = Element.new(:css, '#bad-request')
    @unauthorized = Element.new(:css, '#unauthorized')
    @forbidden = Element.new(:css, '#forbidden')
    @not_found = Element.new(:css, '#invalid-url')
  end

  def visit
    Capybara.visit('links')
  end

end
