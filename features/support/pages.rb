# initializes @pages and the pages needed for the scenarios
require_relative './pagemodule'
class Pages
  include Pagemodule

  def initialize(type = nil)
    raise 'No tag detected!' if type.nil?

    #these pages are initialized before any test case
    @landing_page = LandingPage.new
    @navigation_side = NavigationSide.new
    return unless type

    #when a tag ir called it initialized the needed pages
    case type
    when '@forms' then initialize_forms
    when '@books' then initialize_book_store
    when '@elements' then initialize_elements
    when '@alerts' then initialize_alerts
    when '@widgets' then initialize_widgets
    when '@interactions' then initialize_interactions

    else
      raise 'The tag is not recognized!'
    end
  end
end
