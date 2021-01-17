# web elements and functions for page
class BookProfilePage
  include Capybara::DSL
  include RSpec::Matchers
  include Capybara::RSpecMatchers

  def initialize
    @log_out = Element.new(:css, '#books-wrapper #submit')

    @search_box = Element.new(:css, '#searchBox')
    @go_to_store_btn = Element.new(:css, '.text-left #gotoStore')
    @delete_account = Element.new(:css, '.text-center #submit')
    @delete_all_books = Element.new(:css, '.buttonWrap .text-right #submit')

    @row_item = Element.new(:css, '.rt-tr-group')
    # delete prompt elements
    @confirm_prompt = Element.new(:css, '#closeSmallModal-ok')
    @cancel_prompt = Element.new(:css, '#closeSmallModal-cancel')

    @user_name = Element.new(:css, '#userName-value')

    @image0 = Element.new(:css, "[src='/images/bookimage0.jpg']")
    @image1 = Element.new(:css, "[src='/images/bookimage1.jpg']")
    @image2 = Element.new(:css, "[src='/images/bookimage2.jpg']")
    @image3 = Element.new(:css, "[src='/images/bookimage3.jpg']")
  end

  def visit
    Capybara.visit('profile')
  end

  def check_logged_in_user(name)
    expect(@user_name.text).to eq name
  end

  def delete_all_books
    Capybara.visit('profile')
    @delete_all_books.click
    @confirm_prompt.click
    sleep 1
    page.driver.browser.switch_to.alert.accept
  end

  def check_book(name, status)
    Capybara.within find(@row_item.path, text: "#{name}") do
      case status
      when 'visible'
        expect(@row_item).to have_text name
      when 'not visible'
        expect(@row_item).not_to have_text name
      end
    end
  end

  def check_book_image(name)
    case name
    when 'Git Pocket Guide', "You Don't Know JS"
      expect(page).to have_css(@image0.path)
    when 'Learning JavaScript Design Patterns', 'Programming JavaScript Applications'
      expect(page).to have_css(@image1.path)
    when 'Designing Evolvable Web APIs with ASP.NET', 'Eloquent JavaScript, Second Edition '
      expect(page).to have_css(@image2.path)
    when 'Speaking JavaScript', 'Understanding ECMAScript 6  '
      expect(page).to have_css(@image3.path)
    end
  end

end
