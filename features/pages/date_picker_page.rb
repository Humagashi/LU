# web elements and functions for page
class DatePickerPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @date_pick = Element.new(:css, "#datePickerMonthYearInput")
    @date_and_time_pick = Element.new(:css, "#dateAndTimePickerInput")
  end

  def visit
    Capybara.visit('date-picker')
  end

  def value_of_date
    @date_pick.value
  end

  def value_of_date_and_time
    @date_and_time_pick.value
  end
end
