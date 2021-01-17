# web elements and functions for page
class SelectMenuPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @select_value = Element.new(:css, '#withOptGroup')
    @select_one = Element.new(:css, '#selectOne')
    @select_old = Element.new(:css, '#oldSelectMenu')
    @select_multi = Element.new(:css, '.css-2b097c-container')
    @select_cars = Element.new(:css, '#cars')
    @temp = Element.new(:css, '#react-select-6-option-0-0')
  end

  def visit
    Capybara.visit('select-menu')
  end

  def select_value(value, menu)
    @select_value.click
    @temp.click
  end

  def select_one(value)

  end

  def select_old(value)
    @select_old.click
    case value
    when 'Red'
      value = 'red'
      @color = Element.new(:css, "[value='#{value}']")
      @color.click
      expect(@select_old.value).to eq value
    when 'Blue'
      value = '1'
      @color = Element.new(:css, "[value='#{value}']")
      @color.click
      expect(@select_old.value).to eq value
    when 'Green'
      value = '2'
      @color = Element.new(:css, "[value='#{value}']")
      @color.click
      expect(@select_old.value).to eq value
    when 'Yellow'
      value = '3'
      @color = Element.new(:css, "[value='#{value}']")
      @color.click
      expect(@select_old.value).to eq value
    when 'Purple'
      value = '4'
      @color = Element.new(:css, "[value='#{value}']")
      @color.click
      expect(@select_old.value).to eq value

    when 'Black'
      value = '5'
      @color = Element.new(:css, "[value='#{value}']")
      @color.click
      expect(@select_old.value).to eq value
    when 'White'
      value = '6'
      @color = Element.new(:css, "[value='#{value}']")
      @color.click
      expect(@select_old.value).to eq value
    when 'Violet'
      value = '7'
      @color = Element.new(:css, "[value='#{value}']")
      @color.click
      expect(@select_old.value).to eq value
    when 'Indigo'
      value = '8'
      @color = Element.new(:css, "[value='#{value}']")
      @color.click
      expect(@select_old.value).to eq value
    when 'Magenta'
      value = '9'
      @color = Element.new(:css, "[value='#{value}']")
      @color.click
      expect(@select_old.value).to eq value
    when 'Aqua'
      value = '10'
      @color = Element.new(:css, "[value='#{value}']")
      @color.click
      expect(@select_old.value).to eq value
    end
  end

  def select_muti(value)

  end

  def select_cars(value)

  end

end
