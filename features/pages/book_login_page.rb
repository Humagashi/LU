# web elements and functions for page
class BookLoginPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @user_name = Element.new(:css, '.login-wrapper #userName')
    @password = Element.new(:css, '.login-wrapper #password')
    @login_btn = Element.new(:css, '.login-wrapper #login.btn')
    @new_user_btn = Element.new(:css, '.login-wrapper #newUser.btn')
  end

  def visit
    Capybara.visit('login')
  end

  def login(user_name, password)
    @user_name.send_keys(user_name)
    @password.send_keys(password)
    @login_btn.click
  end

  def create_new_user
    @new_user_btn.click
  end

end
