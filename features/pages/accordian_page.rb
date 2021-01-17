# web elements and functions for page
class AccordianPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @title1 = Element.new(:css, '#section1Heading')
    @title2 = Element.new(:css, '#section2Heading')
    @title3 = Element.new(:css, '#section3Heading')

    @title1_content = Element.new(:css, '#section1Content')
    @title2_content = Element.new(:css, '#section2Content')
    @title3_content = Element.new(:css, '#section3Content')
  end

  def visit
    Capybara.visit('accordian')
  end

  def open_accordian(number)
    case number
    when '1'
      @title1.click
    when '2'
      @title2.click
    when '3'
      @title3.click
    end
  end

end
