# web elements and functions for page
class TextBoxPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    # input fields
    @full_name = Element.new(:css, '#userName')
    @email = Element.new(:css, '#userEmail')
    @current_address = Element.new(:css, '#currentAddress')
    @permanent_address = Element.new(:css, '#permanentAddress')
    @submit_btn = Element.new(:css, '#submit')
    # output fields
    @output_name = Element.new(:css, '#output #name')
    @output_email = Element.new(:css, '#output #email')
    @output_current = Element.new(:css, '#output #currentAddress')
    @output_permanent = Element.new(:css, '#output #permanentAddress')

  end

  def visit
    Capybara.visit('text-box')
  end

  def fill_text
    # fill input fields in page
    @full_name.send_keys('Markuss Rolands')
    @email.send_keys('markuss.rolands@gmail.com')
    @current_address.send_keys('Zivju iela 2')
    @permanent_address.send_keys('Upes iela 22')
  end

  def submit_text
    @submit_btn.click
  end

  def check_output
    # check if output fields match input field text
    expect(@output_name.text).to have_text 'Markuss Rolands'
    expect(@output_email.text).to have_text 'markuss.rolands@gmail.com'
    expect(@output_current.text).to have_text 'Zivju iela 2'
    expect(@output_permanent.text).to have_text 'Upes iela 22'
  end
end
