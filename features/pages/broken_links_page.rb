# web elements and functions for page
class BrokenLinksPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @good_image = Element.new(:css, "[src='/images/Toolsqa.jpg']")
    @broken_image = Element.new(:css, "[src='/images/Toolsqa_1.jpg']")
  end

  def visit
    Capybara.visit('broken')
  end

  def test_image
    page.should have_css(@broken_image.path)
    img = page.first(:css, @broken_image.path)
    Capybara.visit img[:src]
    # html response code should be 200
    # maybe different solution?
  end
end
