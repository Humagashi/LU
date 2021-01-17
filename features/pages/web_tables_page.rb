# web elements and functions for page
class WebTablesPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @add_btn = Element.new(:css, '#addNewRecordButton')
    @search_box = Element.new(:css, '#searchBox')
    @client_rows = Element.new(:css, '.rt-tr-group')
    # add form
    @first_name = Element.new(:css, '#firstName')
    @last_name = Element.new(:css, '#lastName')
    @email = Element.new(:css, '#userEmail')
    @age = Element.new(:css, '#age')
    @salary = Element.new(:css, '#salary')
    @department = Element.new(:css, '#department')
    @submit_btn = Element.new(:css, '#submit')

    @edit_btn = Element.new(:css, "[title='Edit']")
    @delete_btn = Element.new(:css, "[title='Delete']")


  end

  def visit
    Capybara.visit('webtables')
  end

  def add_user
    user = Users.main_user
    @add_btn.click
    @first_name.send_keys(user.firstname)
    @last_name.send_keys(user.lastname)
    @email.send_keys(user.email)
    @age.send_keys('21')
    @salary.send_keys('3000')
    @department.send_keys('Sports')
    @submit_btn.click
  end

  def edit_user(name, field, value)
    Capybara.within find(@client_rows.path, text: "#{name}") do
      case field
      when 'first name'
        @first_name.send_keys(value)
      when 'last name'
        @last_name.send_keys(value)
      when 'email'
        @email.send_keys(value)
      when 'age'
        @age.send_keys(value)
      when 'salary'
        @salary.send_keys(value)
      when 'department'
        @department.send_keys(value)
      end
     @submit_btn.click
    end
  end

  def delete_user(name)
    Capybara.within find(@client_rows.path, text: "#{name}") do
      @delete_btn.click
    end
  end

  def user_in_table(name, status)
    @search_box.set("")
    @search_box.send_keys(name)
    Capybara.within find(@client_rows.path, match: :first) do
      case status
      when 'visible'
        expect(@client_rows).to have_text name
      when 'not visible'
        expect(@client_rows).not_to have_text name
      end
    end
  end

end
