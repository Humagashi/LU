# web elements and functions for page
class LandingPage
  include Capybara::DSL
  def initialize
    @section_titles = Element.new(:css, '.category-cards h5')
  end

  def navigate_to_elements_section
    page.all(@section_titles.path)[0].click
  end

  def navigate_to_forms_section
    page.all(@section_titles.path)[1].click
  end

  def navigate_to_alerts_section
    page.all(@section_titles.path)[2].click
  end

  def navigate_to_widgets_section
    page.all(@section_titles.path)[3].click
  end

  def navigate_to_interactions_section
    page.all(@section_titles.path)[4].click
  end

  def navigate_to_books_section
    page.all(@section_titles.path)[5].click
  end

  def visit
    Capybara.visit(' ')
  end

end
