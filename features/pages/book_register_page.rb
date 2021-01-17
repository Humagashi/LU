# web elements and functions for page
class BookRegisterPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  attr_accessor :head_btn
  def initialize
    @first_name = Element.new(:css, '.register-wrapper #firstname')
    @last_name = Element.new(:css, '.register-wrapper #lastname')
    @user_name = Element.new(:css, '.register-wrapper #userName')
    @password = Element.new(:css, '.register-wrapper #password')
    @captcha = Element.new(:css, '.register-wrapper recaptcha-checkbox-border')
    @register_btn = Element.new(:css, '.register-wrapper #register')
    @back_to_login_btn = Element.new(:css, '.register-wrapper #userName')
  end

  def visit
    Capybara.visit('register')
  end

  def register_user(first_name, last_name, user_name, password)
    @first_name.send_keys(first_name)
    @last_name.send_keys(last_name)
    @user_name.send_keys(user_name)
    @password.send_keys(password)
    @captcha.click
    @register_btn.click
  end

end
