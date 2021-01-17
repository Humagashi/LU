# web elements and functions for page
class FormPage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @first_name = Element.new(:css, '#firstName')
    @last_name = Element.new(:css, '#lastName')
    @email = Element.new(:css, '#userEmail')
    @male = Element.new(:css, "[for='gender-radio-1']")
    @female = Element.new(:css, "[for='gender-radio-2']")
    @other = Element.new(:css, "[for='gender-radio-3']")
    @mobile = Element.new(:css, '#userNumber')
    @date_of_birth = Element.new(:css, '#dateOfBirthInput')

    @subjects = Element.new(:css, '#subjectsContainer')
    @auto_complete = Element.new(:css, '.subjects-auto-complete__option')

    @sports = Element.new(:css, "[for='hobbies-checkbox-1']")
    @reading = Element.new(:css, "[for='hobbies-checkbox-2']")
    @music = Element.new(:css, "[for='hobbies-checkbox-3']")

    @picture = Element.new(:css, '#uploadPicture')

    @current_address = Element.new(:css, '#currentAddress')

    @close_modal = Element.new(:css, '#closeLargeModal')

    @submit_btn = Element.new(:css, '#submit')

    # results page
    @result_table_row = Element.new(:css, '.table-responsive tr')
  end

  def visit
    Capybara.visit('automation-practice-form')
  end

  def complete_form(passed_user)
    user = passed_user
    @first_name.send_keys(user.firstname)
    @last_name.send_keys(user.lastname)
    @email.send_keys(user.email)
    @male.click
    @mobile.send_keys(user.mobile)
    #Capybara.within('#subjectsWrapper') do
    #find('.subjects-auto-complete__control', :visible => false).set("Math")
    #find('.subjects-auto-complete__control', :visible => false).set("Math")
    #sleep 1
    # @auto_complete.click
    #end
    hobbies = 'Sports'
    case hobbies
    when 'Sports'
      @sports.click
    when 'Reading'
      @reading.click
    when 'Music'
      @music.click
    end
    @current_address.send_keys(user.address)
  end

  def submit_form
    @submit_btn.click
    expect(page).to have_css(@result_table_row.path), 'Results form page did not load!'
  end

  def inspect_results(user)
    @results_name = page.all(@result_table_row.path)[1].text
    @results_email = page.all(@result_table_row.path)[2].text
    @results_gender = page.all(@result_table_row.path)[3].text
    @results_mobile = page.all(@result_table_row.path)[4].text
    @results_date = page.all(@result_table_row.path)[5].text
    @results_address = page.all(@result_table_row.path)[9].text
    expect(@results_name).to have_text("#{user.firstname} #{user.lastname}")
    expect(@results_email).to have_text(user.email)
    expect(@results_gender).to have_text('Male')
    expect(@results_mobile).to have_text(user.mobile)
    date = user.birth.split("/")
    date[1] = turn_month_i_to_s(date[1])
    expect(@results_date).to have_text("#{date[0]} #{date[1]},#{date[2]}")
    expect(@results_address).to have_text(user.address)
    @close_modal.click
  end

  def open_date(user)
    date = user.birth.split("/")
    day = date[0]
    month = date[1]
    year = date[2]
    month = month.to_i
    month = month - 1
    @date_of_birth.click
    find(".react-datepicker__month-select").click
    find(".react-datepicker__month-select [value='#{month}']").click
    find(".react-datepicker__year-select").click
    find(".react-datepicker__year-select [value='#{year}']").click
    find(".react-datepicker__day--0#{day}").click
  end

  def turn_month_i_to_s(number)
    case number
    when '1'
      @month = 'Januray'
    when '2'
      @month = 'February'
    when '3'
      @month = 'March'
    when '4'
      @month = 'April'
    when '5'
      @month = 'May'
    when '6'
      @month = 'June'
    when '7'
      @month = 'July'
    when '8'
      @month = 'August'
    when '9'
      @month = 'September'
    when '10'
      @month = 'October'
    when '11'
      @month = 'November'
    when '12'
      @month = 'December'





    end
  end

end
