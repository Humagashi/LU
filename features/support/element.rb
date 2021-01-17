# contains methods for website elements
class Element
  include RSpec::Matchers
  include Capybara::DSL
  # contructor to create a hash
  def initialize(type, value)
    @value = Hash[type: type, value: value]
  end
  # perfom functions with the hash value
  def find
    Capybara.find(@value[:type], @value[:value])
  end

  def click
    find.click
  end

  def send_keys(value)
    find.send_keys value
  end

  def text
    find.text
  end

  def value
    find.value
  end

  def checked?
    find.checked?
  end

  def double_click
    find.double_click
  end

  def right_click
    find.right_click
  end

  def set(value)
    find.set(value)
  end
  # call element css value
  def path
    @value[:value]
  end

  def disabled?
    find.disabled?
  end

  def enabled?
    !find.disabled?
  end

  def css
    @value[:value]
  end

  def hover
    find.hover
  end

  def click_button
    find.click_button
  end
end
